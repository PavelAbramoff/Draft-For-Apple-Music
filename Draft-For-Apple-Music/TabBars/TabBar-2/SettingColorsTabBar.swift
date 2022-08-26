//
//  SettingColorsTabBar.swift
//  Draft-For-Apple-Music
//
//  Created by Pavel Абрамов on 25.08.2022.
//

import Foundation
import UIKit

// Создание цветов
// для подбора цвета используем #colorLetiral()
extension UIColor {
    static var tabaBarItemAccent: UIColor { // Цвет для выделенного элемента TabBar
        #colorLiteral(red: 1, green: 0.2527923882, blue: 1, alpha: 1)
    }
    static var mainWhite: UIColor { // Цвет для самого TabBar
        #colorLiteral(red: 0.4866311184, green: 1, blue: 0.8672594193, alpha: 0.8471093588)
    }
    static var tabBarItemLight: UIColor { // Цвет для не выделенного элемента TabBar
        #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 0.4409632399)
    }
}
