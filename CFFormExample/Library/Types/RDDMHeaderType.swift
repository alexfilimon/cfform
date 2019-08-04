//
//  RDDMHeaderType.swift
//  CFFormExample
//
//  Created by Alexander Filimonov on 04/08/2019.
//  Copyright © 2019 Александр Филимонов. All rights reserved.
//

import ReactiveDataDisplayManager

enum RDDMHeaderType {

    case header(value: TableHeaderGenerator)
    case cell(value: TableCellGenerator)

}
