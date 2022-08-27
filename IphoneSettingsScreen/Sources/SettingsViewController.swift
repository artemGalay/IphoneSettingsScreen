//
//  SettingsViewController.swift
//  IphoneSettingsScreen
//
//  Created by Артем Галай on 25.08.22.
//

import UIKit

class SettingsViewController: UIViewController {

    private var contents: [ContentSections]?

    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(DefaultTableViewCell.self, forCellReuseIdentifier: "DefaultTableViewCell")
        tableView.register(LabelTableViewCell.self, forCellReuseIdentifier: "LabelTableViewCell")
        tableView.register(SwitchTableViewCell.self, forCellReuseIdentifier: "SwitchTableViewCell")
        tableView.dataSource = self
//        tableView.delegate = self
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        contents = ContentSections.contentSections
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
        setupHierarhy()
        setupLayout()
    }

    private func setupHierarhy() {
        view.addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.snp.makeConstraints {
            $0.top.right.bottom.left.equalTo(view)
        }
    }
}

