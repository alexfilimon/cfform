//
//  CFFormAbstract.swift
//  CFFormExample
//
//  Created by Alexander Filimonov on 30/07/2019.
//  Copyright © 2019 Александр Филимонов. All rights reserved.
//

import ReactiveDataDisplayManager

public protocol CFFormAbstract: class {

    // Loading

    var isSomeFieldLoading: Bool { get }
    func startLoading()
    func endLoading()

    // Validating

    var validationErrors: [Error] { get }
    var validationPolicy: CFValidationPolicy { get set }
    func validate() -> [Error]

    // Base methods

    func display(in adapter: BaseTableDataDisplayManager)
    func add(section: CFSectionAbstract)
    func add(sections: [CFSectionAbstract])

}
