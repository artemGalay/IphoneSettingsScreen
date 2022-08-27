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

        let content = ContentSections.contentSections[indexPath.section].settingCellItem[indexPath.row]

        switch content.typeCell {
        case .defaultCell:
            let defaultCell = tableView.dequeueReusableCell(withIdentifier: "DefaultTableViewCell", for: indexPath) as? DefaultTableViewCell
            defaultCell?.contents = ContentSections.contentSections[indexPath.section].settingCellItem[indexPath.row]
            defaultCell?.accessoryType = .disclosureIndicator
            return defaultCell ?? UITableViewCell()
        case .labelCell:
            let labelCell = tableView.dequeueReusableCell(withIdentifier: "LabelTableViewCell", for: indexPath) as? LabelTableViewCell
            labelCell?.contents = ContentSections.contentSections[indexPath.section].settingCellItem[indexPath.row]
            labelCell?.accessoryType = .disclosureIndicator
            return labelCell ?? UITableViewCell()
        case .switchCell:
            return UITableViewCell()
        case .imageCell:
            return UITableViewCell()
        }



//
//        let defaultCell = tableView.dequeueReusableCell(withIdentifier: "DefaultTableViewCell", for: indexPath) as? DefaultTableViewCell
//        defaultCell?.contents = ContentSections.contentSections[indexPath.section].settingCellItem[indexPath.row]
//        defaultCell?.accessoryType = .disclosureIndicator
//        return defaultCell ?? UITableViewCell()
//
//        let labelCell = tableView.dequeueReusableCell(withIdentifier: "LabelTableViewCell", for: indexPath) as? LabelTableViewCell
//        labelCell?.contents = ContentSections.contentSections[indexPath.section].settingCellItem[indexPath.row]
//        labelCell?.accessoryType = .disclosureIndicator
//        return labelCell ?? UITableViewCell()
    }
}

