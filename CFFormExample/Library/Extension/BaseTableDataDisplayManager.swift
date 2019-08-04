//
//  BaseTableDataDisplayManager.swift
//  CFFormExample
//
//  Created by Alexander Filimonov on 15/07/2019.
//  Copyright © 2019 Александр Филимонов. All rights reserved.
//

import Foundation

extension BaseTableDataDisplayManager {

    func forceRefill(completion: @escaping EmptyClosure) {
        CATransaction.begin()
        CATransaction.setCompletionBlock {
            completion()
        }
        tableView?.reloadData()
        CATransaction.commit()
    }

}
