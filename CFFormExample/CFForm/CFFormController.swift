//
//  ViewController.swift
//  CFFormExample
//
//  Created by Alexander Filimonov on 14/07/2019.
//  Copyright © 2019 Александр Филимонов. All rights reserved.
//

import UIKit
import PinLayout
import ReactiveDataDisplayManager

class CFFormController: UIViewController {

    // MARK: - Nested types

    private enum Constants {
        static let tableViewInsets = UIEdgeInsets(top: 0, left: 0, bottom: 72, right: 0)
    }

    // MARK: - Subviews

    private var tableView = UITableView()
    private var button = UIButton(type: .system)
    private lazy var adapter = BaseTableDataDisplayManager(collection: tableView)

    // MARK: - UITableView

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        configureButton()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        layout()
    }

    // MARK: - Actions

    @objc
    private func buttonClicked() {
        print("hello")
    }

    // MARK: - Private methods

    private func layout() {
        tableView.pin
            .all(view.safeAreaInsets)

        button.pin
            .horizontally(12)
            .bottom(12)
            .height(48)
    }

    private func configureTableView() {
        view.addSubview(tableView)
        tableView.backgroundColor = .white
        tableView.separatorStyle = .none
        tableView.keyboardDismissMode = .onDrag
        tableView.contentInset = Constants.tableViewInsets
    }

    private func configureButton() {
        view.addSubview(button)
        button.backgroundColor = .black
        button.layer.cornerRadius = 3
        button.setTitle("Далее", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
    }

}
