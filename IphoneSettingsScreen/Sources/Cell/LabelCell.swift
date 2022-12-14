//
//  LabelTableViewCell.swift
//  IphoneSettingsScreen
//
//  Created by Артем Галай on 27.08.22.
//

import UIKit

final class LabelTableViewCell: DefaultTableViewCell {

    override var contents: SettingCell? {
        didSet {
            rightLabel.text = contents?.additionalLabel
        }
    }

    // MARK: - Outlets

    private lazy var rightLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .lightGray
        return label
    } ()

    // MARK: - Initialisers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup

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
