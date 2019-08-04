//
//  CFRangeValidationRule.swift
//  CFFormExample
//
//  Created by Alexander Filimonov on 04/08/2019.
//  Copyright © 2019 Александр Филимонов. All rights reserved.
//

import Foundation

final public class CFRangeValidationRule<T: Comparable>: CFValidationRule<T> {

    init(min: T, max: T, error: Error = CFValidationError.notInRange) {
        super.init { (value) -> Result<Void, Error> in
            guard min <= value && value <= max else {
                return .failure(error)
            }
            return .success
        }
    }

}
