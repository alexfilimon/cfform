//
//  CFSectionAbstract.swift
//  CFFormExample
//
//  Created by Alexander Filimonov on 15/07/2019.
//  Copyright © 2019 Александр Филимонов. All rights reserved.
//

import ReactiveDataDisplayManager

public protocol CFSectionAbstract: class {

    /// For form understands is section loading
    var isSectionLoading: Bool { get }

    var headerGenerator: TableHeaderGenerator { get }

    var generators: [TableCellGenerator] { get }

    var loadingGenerators: [TableCellGenerator] { get }

    var fields: [CFFieldAbstract] { get }

//    func set(form: CFForm)

    var form: CFForm { get set }

}
