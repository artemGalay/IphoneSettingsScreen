//
//  DetailViewController.swift
//  IphoneSettingsScreen
//
//  Created by Артем Галай on 27.08.22.
//

import UIKit

final class DetailViewController: UIViewController {

    var contents: SettingCell?

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        imageView.tintColor = .white
        return imageView
    } ()

    private lazy var label: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .white
        return label
    } ()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemIndigo
        setupHierarchy()
        setupLayout()
        fillSettings()
    }

    // MARK: - Setup
    
    private func setupHierarchy() {
        view.addSubview(imageView)
        view.addSubview(label)
    }

    private func setupLayout() {
        imageView.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.width.height.equalTo(150)
        }
        label.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(imageView.snp.bottom).offset(20)
        }
    }

    private func fillSettings() {
        imageView.image = contents?.icon
        label.text = contents?.settingLabel
    }
}
