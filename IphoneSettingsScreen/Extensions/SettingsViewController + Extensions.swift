//
//  SettingsViewController.swift
//  IphoneSettingsScreen
//
//  Created by Артем Галай on 27.08.22.
//

import UIKit

extension SettingsViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return ContentSections.contentSections.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ContentSections.contentSections[section].settingCellItem.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultTableViewCell", for: indexPath) as? DefaultTableViewCell
        cell?.contents = ContentSections.contentSections[indexPath.section].settingCellItem[indexPath.row]
        cell?.accessoryType = .disclosureIndicator
        return cell ?? UITableViewCell()
    }
}

