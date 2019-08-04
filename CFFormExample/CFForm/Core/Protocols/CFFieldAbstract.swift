//
//  CFFieldAbstract.swift
//  CFFormExample
//
//  Created by Alexander Filimonov on 15/07/2019.
//  Copyright © 2019 Александр Филимонов. All rights reserved.
//

import ReactiveDataDisplayManager

public protocol CFFieldAbstract: class {

    // generators from RDDM
    var generators: [TableCellGenerator] { get }

//    // set section for accessing to some properties and constants
//    func setSection(_ section: CFSectionAbstract?)
//
//    // get section for default extensions
//    func getSection() -> CFSectionAbstract?

    var section: CFSectionAbstract? { get set }

    // set need separator
    func set(needSeparator: Bool)

}
