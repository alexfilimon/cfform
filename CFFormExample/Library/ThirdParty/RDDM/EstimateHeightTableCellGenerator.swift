//
//  EstimateHeightTableCellGenerator.swift
//  CFFormExample
//
//  Created by Alexander Filimonov on 04/08/2019.
//  Copyright © 2019 Александр Филимонов. All rights reserved.
//

import ReactiveDataDisplayManager

public protocol EstimateHeightTableCellGenerator: TableCellGenerator {
    func estimatedHeight() -> CGFloat?
}

extension EstimateHeightTableCellGenerator {
    func estimatedHeight() -> CGFloat? {
        return nil
    }
}
