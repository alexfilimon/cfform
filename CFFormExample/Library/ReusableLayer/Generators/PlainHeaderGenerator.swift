//
//  PlainHeaderGenerator.swift
//  CFFormExample
//
//  Created by Alexander Filimonov on 04/08/2019.
//  Copyright © 2019 Александр Филимонов. All rights reserved.
//

import ReactiveDataDisplayManager

public class PlainHeaderGenerator: TableHeaderGenerator {

    // MARK: - Nested types

    private enum Constants {
        static let defaultHeight: CGFloat = 48
        static let defaultHorizontalInset: CGFloat = 16
        static let defaultFont: UIFont = UIFont.systemFont(ofSize: 16)
    }

    // MARK: - Properties

    private let title: String
    private let height: CGFloat
    private let font: UIFont
    private let textColor: UIColor
    private let backgroundColor: UIColor
    private let leftInset: CGFloat
    private let rightInset: CGFloat

    // MARK: - Initialization and deinitialization

    init(
        title: String,
        height: CGFloat = Constants.defaultHeight,
        font: UIFont = Constants.defaultFont,
        textColor: UIColor = .black,
        backgroundColor: UIColor = .clear,
        leftInset: CGFloat = Constants.defaultHorizontalInset,
        rightInset: CGFloat = Constants.defaultHorizontalInset
    ) {
        self.title = title
        self.height = height
        self.font = font
        self.textColor = textColor
        self.backgroundColor = backgroundColor
        self.leftInset = leftInset
        self.rightInset = rightInset
    }

    // MARK: - TableHeaderGenerator

    override public func generate() -> UIView {
        return PlainHeaderView()
            .configured(
                title: title,
                font: font,
                textColor: textColor,
                backgroundColor: backgroundColor,
                leftInset: leftInset,
                rightInset: rightInset
            )
    }

    override public func height(_ tableView: UITableView, forSection section: Int) -> CGFloat {
        return height
    }

}
