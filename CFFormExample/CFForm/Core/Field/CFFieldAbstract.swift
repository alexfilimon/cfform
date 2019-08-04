//
//  CFFieldAbstract.swift
//  CFFormExample
//
//  Created by Alexander Filimonov on 15/07/2019.
//  Copyright © 2019 Александр Филимонов. All rights reserved.
//

import ReactiveDataDisplayManager

public protocol CFFieldAbstract: class {

    var generators: [TableCellGenerator] { get }
    var section: CFSectionAbstract? { get set }

    // Style properties

    var needSeparator: Bool { get set }

}
