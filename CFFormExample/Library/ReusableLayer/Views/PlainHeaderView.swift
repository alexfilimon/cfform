//
//  PlainHeaderView.swift
//  CFFormExample
//
//  Created by Alexander Filimonov on 04/08/2019.
//  Copyright © 2019 Александр Филимонов. All rights reserved.
//

import UIKit

final class PlainHeaderView: UIView {

    // MARK: - Nested types

    private enum Constants {
        static let defaultHorizontalInset: CGFloat = 16
        static let defaultFont: UIFont = UIFont.systemFont(ofSize: 16)
    }

    // MARK: - Subviews

    private var customContainer: UIView?
    @IBOutlet private weak var titleLabel: UILabel!

    // MARK: - NSLayoutConstraints

    @IBOutlet private weak var rightLabelConstraint: NSLayoutConstraint!
    @IBOutlet private weak var leftLabelConstraint: NSLayoutConstraint!
    
    // MARK: - Initialization

    override init(frame: CGRect) {
        super.init(frame: frame)
        customContainer = initFromNib()
        configureAppearance()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        customContainer = initFromNib()
        configureAppearance()
    }

    // MARK: - Internal methods

    @discardableResult
    func configured(
        title: String = "",
        font: UIFont = Constants.defaultFont,
        textColor: UIColor = .black,
        backgroundColor: UIColor = .clear,
        leftInset: CGFloat = Constants.defaultHorizontalInset,
        rightInset: CGFloat = Constants.defaultHorizontalInset
    ) -> UIView {

        titleLabel.font = font
        titleLabel.textColor = textColor
        titleLabel.text = title

        customContainer?.backgroundColor = backgroundColor

        leftLabelConstraint.constant = leftInset
        rightLabelConstraint.constant = rightInset

        return self
    }

    // MARK: - Private methods

    private func configureAppearance() {
        configureLabel()
    }

    private func configureLabel() {
        titleLabel.textAlignment = .left
        titleLabel.numberOfLines = 1
    }

}
