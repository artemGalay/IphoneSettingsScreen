//
//  TableViewCell.swift
//  IphoneSettingsScreen
//
//  Created by Артем Галай on 26.08.22.
//

import UIKit

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

    }

    private func setupLayout() {

    }

}
