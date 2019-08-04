//
//  CFSectionHeaderStyle.swift
//  CFFormExample
//
//  Created by Alexander Filimonov on 04/08/2019.
//  Copyright © 2019 Александр Филимонов. All rights reserved.
//

import UIKit

public struct CFSectionHeaderStyle {

    // MARK: - Properties

    var font: UIFont
    var height: CGFloat
    var emptyHeight: CGFloat
    var textColor: UIColor
    var backgroundColor: UIColor

    // MARK: - Static methods

    static public func `default`() -> CFSectionHeaderStyle {
        return .init(
            font: UIFont.systemFont(ofSize: 14),
            height: 44,
            emptyHeight: 20,
            textColor: .black,
            backgroundColor: .clear
        )
    }

}
