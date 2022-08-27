//
//  SwitchTableViewCell.swift
//  IphoneSettingsScreen
//
//  Created by Артем Галай on 27.08.22.
//

import UIKit

class SwitchTableViewCell: DefaultTableViewCell {

    private lazy var mySwitch: UISwitch = {
        let mySwitch = UISwitch()
        mySwitch.isOn = false
        mySwitch.addTarget(self, action: #selector(tapSwitch), for: .valueChanged)
        return mySwitch
    } ()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupHierarchy() {
        contentView.addSubview(mySwitch)
    }
    
    private func setupLayout() {
        mySwitch.snp.makeConstraints {
            $0.centerY.equalTo(settingLabel)
            $0.trailing.equalToSuperview().offset(-10)
        }
    }

    @objc func tapSwitch(_ sender: UISwitch) {
        if sender.isOn {
            print("Включён")
        } else {
            print("Выключен")
        }
    }
}


