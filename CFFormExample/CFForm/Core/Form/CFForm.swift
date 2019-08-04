//
//  CFForm.swift
//  CFFormExample
//
//  Created by Alexander Filimonov on 14/07/2019.
//  Copyright © 2019 Александр Филимонов. All rights reserved.
//

import Foundation
import ReactiveDataDisplayManager

open class CFForm: CFFormAbstract {

    // MARK: - Computed properties

    public var isSomeFieldLoading: Bool {
        return _isSomeFieldLoading()
    }

    // MARK: - Readonly properties

    public private(set) var validationErrors: [Error] = []
    public private(set) var adapter: BaseTableDataDisplayManager?

    // MARK: - Public properties

    public var separatorStyle: CFSeparatorStyle = CFConstants.defaultSeparatorStyle
    public var validationPolicy: CFValidationPolicy = CFConstants.defaultValidationPolicy

    // MARK: - CFFormAbstract

    public func display(in adapter: BaseTableDataDisplayManager) {
        self.adapter = adapter
    }

    public func add(section: CFSectionAbstract) {

    }

    public func add(sections: [CFSectionAbstract]) {
        
    }

    @discardableResult
    public func validate() -> [Error] {
        return []
    }

    public func startLoading() {

    }

    public func endLoading() {

    }

    // MARK: - Private methods

    private func _isSomeFieldLoading() -> Bool {
        // TODO: доделать
        return false
    }

}
