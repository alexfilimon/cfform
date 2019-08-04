//
//  PlainTitleCell.swift
//  CFFormExample
//
//  Created by Alexander Filimonov on 04/08/2019.
//  Copyright © 2019 Александр Филимонов. All rights reserved.
//

import UIKit

public final class PlainTitleCell: UITableViewCell {

    // MARK: - Nested types

    private enum Constants {
        static let defaultHeight: CGFloat = 48
        static let defaultHorizontalInset: CGFloat = 16
        static let defaultFont: UIFont = UIFont.systemFont(ofSize: 16)
    }

    // MARK: - Sibviews

    @IBOutlet private weak var plainHeaderView: PlainHeaderView!

    // MARK: - Initialization

    override func awakeFromNib() {
        super.awakeFromNib()
        configureAppearance()
    }

    // MARK: - Public methods

    public func configure(
        title: String,
        height: CGFloat = Constants.defaultHeight,
        font: UIFont = Constants.defaultFont,
        textColor: UIColor = .black,
        backgroundColor: UIColor = .clear,
        leftInset: CGFloat = Constants.defaultHorizontalInset,
        rightInset: CGFloat = Constants.defaultHorizontalInset
    ) {
        plainHeaderView.configured(
            title: title,
            font: font,
            textColor: textColor,
            backgroundColor: backgroundColor,
            leftInset: leftInset,
            rightInset: rightInset
        )
    }

    // MARK: - Private methods

    private func configureAppearance() {
        selectionStyle = .none
    }
    
}
