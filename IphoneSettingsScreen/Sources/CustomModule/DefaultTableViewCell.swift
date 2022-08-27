//
//  TableViewCell.swift
//  IphoneSettingsScreen
//
//  Created by Артем Галай on 26.08.22.
//

import UIKit
import SnapKit

class DefaultTableViewCell: UITableViewCell {

    var contents: SettingCell? {
        didSet {
            iconImage.image = contents?.icon
            settingLabel.text = contents?.settingLabel
            backIconImage.backgroundColor = contents?.backgroundcolorIcon
        }
    }

    private lazy var iconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .white
        imageView.clipsToBounds = true
        return imageView
    }()

    private lazy var backIconImage: UIView = {
        let view = UIImageView()
        view.layer.cornerRadius = 8
        return view
    }()

    private lazy var settingLabel: UILabel = {
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
        addSubview(backIconImage)
        addSubview(iconImage)
        addSubview(settingLabel)
    }

    private func setupLayout() {

        backIconImage.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(30)
            $0.centerY.equalToSuperview()
            $0.width.height.equalTo(35)
        }
        
        iconImage.snp.makeConstraints {
            $0.centerX.centerY.equalTo(backIconImage)
        }

        settingLabel.snp.makeConstraints {
            $0.centerY.equalTo(backIconImage)
            $0.leading.equalTo(backIconImage.snp.trailing).offset(20)
        }
    }

}
