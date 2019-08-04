//
//  CFValidationRule.swift
//  CFFormExample
//
//  Created by Alexander Filimonov on 15/07/2019.
//  Copyright © 2019 Александр Филимонов. All rights reserved.
//

import Foundation

open class CFValidationRule<T> {

    // MARK: - Nested types

    typealias ValidationHandler = (T) -> Result<Void, Error>

    // MARK: - Private properties

    private var validationHandler: ValidationHandler

    // MARK: - Initialization

    init(validationHandler: @escaping ValidationHandler) {
        self.validationHandler = validationHandler
    }

    // MARK: - Public methods

    public func validate(value: T) -> Result<Void, Error> {
        return validationHandler(value)
    }

}
