//
//  SettingsViewController.swift
//  IphoneSettingsScreen
//
//  Created by Артем Галай on 25.08.22.
//

import UIKit

final class SettingsViewController: UIViewController {

    private var contents: [ContentSections]?

    // MARK: - Outlets

    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(DefaultTableViewCell.self, forCellReuseIdentifier: "DefaultTableViewCell")
        tableView.register(LabelTableViewCell.self, forCellReuseIdentifier: "LabelTableViewCell")
        tableView.register(SwitchTableViewCell.self, forCellReuseIdentifier: "SwitchTableViewCell")
        tableView.register(NotifyImageTableViewCell.self, forCellReuseIdentifier: "NotifyImageTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    } ()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        contents = ContentSections.contentSections
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
        setupHierarhy()
        setupLayout()
    }

    // MARK: - Setup

    private func setupHierarhy() {
        view.addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.snp.makeConstraints {
            $0.top.right.bottom.left.equalTo(view)
        }
    }
}

