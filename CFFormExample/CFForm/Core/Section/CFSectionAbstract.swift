//
//  CFSectionAbstract.swift
//  CFFormExample
//
//  Created by Alexander Filimonov on 15/07/2019.
//  Copyright © 2019 Александр Филимонов. All rights reserved.
//

import ReactiveDataDisplayManager

public protocol CFSectionAbstract: class {

    // Loading

    var loadingGenerators: [TableCellGenerator] { get }
    var isSectionLoading: Bool { get }
    func startLoading()
    func endLoading()

    // Base

    var headerGenerator: TableHeaderGenerator { get }
    var generators: [TableCellGenerator] { get }
    var fields: [CFFieldAbstract] { get set }
    var form: CFFormAbstract? { get set }
    var needDisplay: Bool { get set }
    func reload()

    // Style properties

    var headerStyle: CFSectionHeaderStyle { get set }
    var headerType: CFSectionHeaderType { get set }
    var separatorStyle: CFSeparatorStyle { get set }

    // Validation

    var validationPolicy: CFValidationPolicy { get set }

}
