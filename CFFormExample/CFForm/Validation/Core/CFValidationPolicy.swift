//
//  CFValidationPolicy.swift
//  CFFormExample
//
//  Created by Alexander Filimonov on 14/07/2019.
//  Copyright © 2019 Александр Филимонов. All rights reserved.
//

import Foundation

/// Validation policy for form
///
/// - onEditing: when value changed (if typing after input each symbol)
/// - onDemand: when needed outside of form
/// - onLoseFocus: when focuse of input is losing (when user ends typing in input)
public enum CFValidationPolicy {
    case onEditing
    case onDemand
    case onLoseFocus
}
