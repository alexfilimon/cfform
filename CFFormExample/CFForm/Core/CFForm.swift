//
//  CFForm.swift
//  CFFormExample
//
//  Created by Alexander Filimonov on 14/07/2019.
//  Copyright © 2019 Александр Филимонов. All rights reserved.
//

import Foundation
import ReactiveDataDisplayManager

open class CFForm {

    // MARK: - Nested types

    enum Constants {
        static let defaultValidationPolicy = CFValidationPolicy.onLoseFocus
    }

    // MARK: - Readonly properties

    public var isSomeFieldLoading: Bool {
        return _isSomeFieldLoading()
    }
    private(set) public var validationErrors: [CFValidationError] = []

    // MARK: - Private properties

    private var sections: [CFSectionAbstract] = []
    private weak var adapter: BaseTableDataDisplayManager?
    private var isFormLoading = false

    // MARK: - Public methods

    public func add(section: CFSectionAbstract) {
//        section.set(form: self)
        section.form = self
        self.sections.append(section)
    }

    public func add(sections: [CFSectionAbstract]) {
        sections.forEach {
            $0.set(form: self)
            self.sections.append($0)
        }
    }

    public func display(in adapter: BaseTableDataDisplayManager) {
        self.adapter = adapter
        _display(isLoading: false)
    }

    public func startLoading() {
        _display(isLoading: true)
    }

    public func endLoading() {
        _display(isLoading: false)
    }

    @discardableResult
    public func validate() -> [CFValidationError] {
        return []
    }

    // MARK: - Private methods

    private func _display(isLoading: Bool) {
        self.isFormLoading = isLoading

        adapter?.clearCellGenerators()
        adapter?.clearHeaderGenerators()

        for section in sections {
            adapter?.addSectionHeaderGenerator(section.headerGenerator)
            if isLoading {
                adapter?.addCellGenerators(section.loadingGenerators)
            } else {
                adapter?.addCellGenerators(section.generators)
            }
        }

        // TODO: добавить first scroll to bottom
        adapter?.forceRefill()
    }

    private func _isSomeFieldLoading() -> Bool {
        for section in sections {
            guard !section.isSectionLoading else {
                return true
            }
            for field in section.fields {
                if let loadableField = field as? CFLoadableField, loadableField.isFieldLoading {
                    return true
                }
            }
        }
        return false
    }

}
