//
//  CFTransformation.swift
//  CFFormExample
//
//  Created by Alexander Filimonov on 15/07/2019.
//  Copyright © 2019 Александр Филимонов. All rights reserved.
//

import Foundation

open class CFTransformation<T> {

    // MARK: - Properties

    var transformationHandler: ((T) -> T)

    // MARK: - Initialization

    init(transformationHandler: @escaping (T) -> T) {
        self.transformationHandler = transformationHandler
    }

    // MARK: - Internal methods

    func apply(for value: T) -> T {
        return transformationHandler(value)
    }

}
