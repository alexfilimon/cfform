//
//  CFSection.swift
//  CFFormExample
//
//  Created by Alexander Filimonov on 04/08/2019.
//  Copyright © 2019 Александр Филимонов. All rights reserved.
//

import ReactiveDataDisplayManager

open class CFSection: CFSectionAbstract {

    // MARK: - Computed properties

    public var loadingGenerators: [TableCellGenerator] {
        return _generators(isLoading: true)
    }
    public var generators: [TableCellGenerator] {
        return _generators(isLoading: false)
    }

    // MARK: - Readonly properties

    public private(set) var isSectionLoading: Bool = false
    public private(set) lazy var headerGenerator: TableHeaderGenerator = _headerGenerator()

    // MARK: - Public properties

    public weak var form: CFFormAbstract?
    public var fields: [CFFieldAbstract] {
        didSet {
            reload()
        }
    }
    public var needDisplay: Bool = true {
        didSet {
            guard needDisplay != oldValue else {
                return
            }
            reload()
        }
    }
    public lazy var validationPolicy: CFValidationPolicy = _validationPolicy()

    // MARK: - Style properties

    public var headerStyle: CFSectionHeaderStyle = .default()
    public lazy var separatorStyle: CFSeparatorStyle = _separatorStyle()
    public var headerType: CFSectionHeaderType

    init(headerType: CFSectionHeaderType, fields: [CFFieldAbstract]) {
        self.headerType = headerType
        self.fields = fields
    }

    // MARK: - CFSectionAbstract

    public func reload() {
        form?.adapter?.removeAllGenerators(in: headerGenerator)
        if needDisplay {
            form?.adapter?.addCellGenerators(isSectionLoading ? loadingGenerators : generators, toHeader: headerGenerator)
        }
        form?.adapter?.reloadSection(by: headerGenerator)
    }

    public func startLoading() {
        isSectionLoading = true
        reload()
    }

    public func endLoading() {
        isSectionLoading = false
        reload()
    }

    // MARK: - Private methods

    private func _generators(isLoading: Bool) -> [TableCellGenerator] {
        return []
    }

    private func _headerGenerator() -> TableHeaderGenerator {
        switch getHeader(by: headerType) {
        case .header(let header):
            return header
        case .cell(_):
            return EmptyTableHeaderGenerator()
        }
    }

    private func getHeader(by headerType: CFSectionHeaderType) -> RDDMHeaderType {
        switch headerType {
        case .title(let text):
            return .cell(
                value: PlainTitleCellGenerator(
                    title: text,
                    height: headerStyle.height,
                    font: headerStyle.font,
                    textColor: headerStyle.textColor,
                    backgroundColor: headerStyle.backgroundColor
                )
            )
        case .stickyTitle(let text):
            return .header(
                value: PlainHeaderGenerator(
                    title: text,
                    height: headerStyle.height,
                    font: headerStyle.font,
                    textColor: headerStyle.textColor,
                    backgroundColor: headerStyle.backgroundColor
                )
            )
        case .emptyHeight:
            return .cell(
                value: PlainTitleCellGenerator(
                    title: "",
                    height: headerStyle.height,
                    font: headerStyle.font,
                    textColor: headerStyle.textColor,
                    backgroundColor: headerStyle.backgroundColor
                )
            )
        case .none:
            return .cell(
                value: PlainTitleCellGenerator(
                    title: "",
                    height: 0
                )
            )
        }
    }

    private func _validationPolicy() -> CFValidationPolicy {
        return form?.validationPolicy ?? CFConstants.defaultValidationPolicy
    }

    private func _separatorStyle() -> CFSeparatorStyle {
        return form?.separatorStyle ?? CFConstants.defaultSeparatorStyle
    }

}
