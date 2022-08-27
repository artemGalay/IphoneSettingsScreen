//
//  SettingsViewController.swift
//  IphoneSettingsScreen
//
//  Created by Артем Галай on 27.08.22.
//

import UIKit

extension SettingsViewController: UITableViewDataSource, UITableViewDelegate{

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
            let switchCell = tableView.dequeueReusableCell(withIdentifier: "SwitchTableViewCell", for: indexPath) as? SwitchTableViewCell
            switchCell?.contents = ContentSections.contentSections[indexPath.section].settingCellItem[indexPath.row]
            switchCell?.selectionStyle = .none
            return switchCell ?? UITableViewCell()
        case .imageCell:
            let imageCell = tableView.dequeueReusableCell(withIdentifier: "NotifyImageTableViewCell", for: indexPath) as? NotifyImageTableViewCell
            imageCell?.contents = ContentSections.contentSections[indexPath.section].settingCellItem[indexPath.row]
            imageCell?.accessoryType = .disclosureIndicator
            return imageCell ?? UITableViewCell()
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if ContentSections.contentSections[indexPath.section].settingCellItem[indexPath.row].typeCell != .switchCell {
            let viewController = DetailViewController()
            tableView.deselectRow(at: indexPath, animated: true)
            viewController.contents = ContentSections.contentSections[indexPath.section].settingCellItem[indexPath.row]
            navigationController?.pushViewController(viewController, animated: true)
            print("\(viewController.contents?.settingLabel ?? "")")
        }
    }
}
