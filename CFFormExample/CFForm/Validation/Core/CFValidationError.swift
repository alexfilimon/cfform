//
//  CFFormValidationError.swift
//  CFFormExample
//
//  Created by Alexander Filimonov on 14/07/2019.
//  Copyright © 2019 Александр Филимонов. All rights reserved.
//

import Foundation

public enum CFValidationError: LocalizedError {
    case custom(message: String)
    case notInRange

    public var errorDescription: String? {
        switch self {
        case .custom(let message):
            return message
        default:
            return nil
        }
    }
}
