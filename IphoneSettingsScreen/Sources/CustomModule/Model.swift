//
//  Model.swift
//  IphoneSettingsScreen
//
//  Created by Артем Галай on 25.08.22.
//

import UIKit

enum TypeCell {
    case defaultCell
    case labelCell
    case switchCell
    case imageCell
}

struct SettingCell: Hashable {
    var icon: UIImage
    var backgroundcolorIcon: UIColor
    var settingLabel: String
    var additionalLabel: String?
    var settingSwitch: Bool?
    var notifyIcon: UIImage?
    var typeCell: TypeCell
}

struct ContentSections {
    var sectionsNumber: Int
    var settingCellItem: [SettingCell]
}

extension ContentSections {
    static var contentSections: [ContentSections] = [
        ContentSections(sectionsNumber: 0, settingCellItem:
                            [SettingCell(icon: UIImage(systemName: "airplane")!,
                                         backgroundcolorIcon: .systemOrange,
                                         settingLabel: "Авиарежим",
                                         settingSwitch: true,
                                         typeCell: .switchCell),
                             SettingCell(icon: UIImage(systemName: "wifi")!,
                                         backgroundcolorIcon: .systemBlue,
                                         settingLabel: "Wi-fi",
                                         additionalLabel: "Не подключено",
                                         typeCell: .labelCell),
                             SettingCell(icon: UIImage(systemName: "wifi")!,
                                         backgroundcolorIcon: .systemBlue,
                                         settingLabel: "Bluetooth",
                                         additionalLabel: "Вкл.",
                                         typeCell: .labelCell),
                             SettingCell(icon: UIImage(systemName: "antenna.radiowaves.left.and.right")!,
                                         backgroundcolorIcon: .systemGreen,
                                         settingLabel: "Сотовая связь",
                                         typeCell: .defaultCell),
                             SettingCell(icon: UIImage(systemName: "personalhotspot")!,
                                         backgroundcolorIcon: .systemGreen,
                                         settingLabel: "Режим модема",
                                         typeCell: .defaultCell),
                             SettingCell(icon: UIImage(systemName: "wifi")!,
                                         backgroundcolorIcon: .systemBlue,
                                         settingLabel: "VPN",
                                         settingSwitch: true,
                                         typeCell: .defaultCell)]),

        ContentSections(sectionsNumber: 1, settingCellItem:
                            [SettingCell(icon: UIImage(systemName: "bell.badge.fill")!,
                                          backgroundcolorIcon: .systemRed,
                                          settingLabel: "Уведомления",
                                          typeCell: .defaultCell),
                              SettingCell(icon: UIImage(systemName: "speaker.wave.3.fill")!,
                                          backgroundcolorIcon: .systemRed,
                                          settingLabel: "Звуки, тактильные сигналы",
                                          typeCell: .defaultCell),
                              SettingCell(icon: UIImage(systemName: "moon.fill")!,
                                          backgroundcolorIcon: .systemIndigo,
                                          settingLabel: "Фокусирование",
                                          typeCell: .defaultCell),
                              SettingCell(icon: UIImage(systemName: "houglass")!,
                                          backgroundcolorIcon: .systemIndigo,
                                          settingLabel: "Экранное время",
                                          typeCell: .defaultCell)]),

        ContentSections(sectionsNumber: 2, settingCellItem:
                            [SettingCell(icon: UIImage(systemName: "speaker.wave.3.fill")!,
                                        backgroundcolorIcon: .systemGray,
                                        settingLabel: "Основные",
                                        typeCell: .defaultCell),
                            SettingCell(icon: UIImage(systemName: "switch.2")!,
                                         backgroundcolorIcon: .systemGray,
                                         settingLabel: "Пункт управления",
                                         typeCell: .defaultCell),
                             SettingCell(icon: UIImage(systemName: "textfomat.size")!,
                                         backgroundcolorIcon: .systemBlue,
                                         settingLabel: "Экран и яркость",
                                         typeCell: .defaultCell),
                             SettingCell(icon: UIImage(systemName: "wifi")!,
                                         backgroundcolorIcon: .blue,
                                         settingLabel: "Экран <<Домой>>",
                                         typeCell: .defaultCell),
                             SettingCell(icon: UIImage(systemName: "houglass")!,
                                         backgroundcolorIcon: .systemBlue,
                                         settingLabel: "Универсальный доступ",
                                         typeCell: .defaultCell),
                             SettingCell(icon: UIImage(systemName: "faceid")!,
                                          backgroundcolorIcon: .systemGray,
                                          settingLabel: "Обои",
                                          typeCell: .defaultCell),
                              SettingCell(icon: UIImage(systemName: "speaker.wave.3.fill")!,
                                          backgroundcolorIcon: .systemRed,
                                          settingLabel: "Siri и Поиск",
                                          typeCell: .defaultCell),
                              SettingCell(icon: UIImage(systemName: "faceid")!,
                                          backgroundcolorIcon: .systemGreen,
                                          settingLabel: "Face ID и код-пароль",
                                          typeCell: .defaultCell),
                              SettingCell(icon: UIImage(systemName: "houglass")!,
                                          backgroundcolorIcon: .systemRed,
                                          settingLabel: "Экстренный вызов - SOS",
                                          typeCell: .defaultCell)]),
    ]
}
