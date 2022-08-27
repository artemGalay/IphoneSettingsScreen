//
//  LabelTableViewCell.swift
//  IphoneSettingsScreen
//
//  Created by Артем Галай on 27.08.22.
//

import UIKit

class LabelTableViewCell: DefaultTableViewCell {

    override var contents: SettingCell? {
        didSet {
            iconImage.image = contents?.icon
            settingLabel.text = contents?.settingLabel
            backIconImage.backgroundColor = contents?.backgroundcolorIcon
            rightLabel.text = contents?.additionalLabel
        }
    }

    private lazy var rightLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupHierarchy() {
        addSubview(rightLabel)
    }

    private func setupLayout() {
        rightLabel.snp.makeConstraints {
            $0.centerY.equalTo(settingLabel)
            $0.trailing.equalToSuperview().offset(-35)
        }
    }
}
