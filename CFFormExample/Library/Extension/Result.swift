//
//  Result.swift
//  CFFormExample
//
//  Created by Alexander Filimonov on 04/08/2019.
//  Copyright © 2019 Александр Филимонов. All rights reserved.
//

import Foundation

extension Result where Success == Void {

    static var success: Result {
        return .success(())
    }

}
