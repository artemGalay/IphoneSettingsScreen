//
//  NotifyImageCell.swift
//  IphoneSettingsScreen
//
//  Created by Артем Галай on 27.08.22.
//

import UIKit

final class NotifyImageTableViewCell: DefaultTableViewCell {

    override var contents: SettingCell? {
        didSet {
            notifyImage.image = contents?.notifyIcon
        }
    }

    // MARK: - Outlets

    lazy var notifyImage: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .red
        return imageView
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
        addSubview(notifyImage)
    }

    private func setupLayout() {
        notifyImage.snp.makeConstraints {
            $0.centerY.equalTo(settingLabel)
            $0.width.height.equalTo(30)
            $0.trailing.equalToSuperview().offset(-35)
        }
    }
}
