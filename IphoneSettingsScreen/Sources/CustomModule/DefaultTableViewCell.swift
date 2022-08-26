//
//  TableViewCell.swift
//  IphoneSettingsScreen
//
//  Created by Артем Галай on 26.08.22.
//

import UIKit
import SnapKit

class DefaultTableViewCell: UITableViewCell {

    private lazy var iconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        return imageView
    }()

    private lazy var backIconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .white
        return imageView
    }()

    private lazy var imageContainer: UIView = {
        let view = UIView()
        return view
    }()

    private lazy var settingLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
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
        imageContainer.addSubview(iconImage)
        addSubview(imageContainer)
        addSubview(settingLabel)
    }

    private func setupLayout() {
        iconImage.snp.makeConstraints {
            $0.top.trailing.bottom.leading.equalTo(imageContainer)
            $0.center.equalTo(imageContainer)
        }

        imageContainer.snp.makeConstraints {
            $0.top.leading.bottom.equalTo(contentView).offset(10)
            $0.centerY.equalTo(contentView)
            $0.height.width.equalTo(60)
        }

        settingLabel.snp.makeConstraints {
            $0.centerY.equalTo(imageContainer)
            $0.leading.equalTo(imageContainer.snp.trailing).offset(20)
        }
    }

}
