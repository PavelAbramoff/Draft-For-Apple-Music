//
//  TabBarController.swift
//  Draft-For-Apple-Music
//
//  Created by Pavel Абрамов on 25.08.2022.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray

        
        let flowViewController = FirstViewController()
        let compositionViewController = SecondViewController()
        
        let boldConfig = UIImage.SymbolConfiguration(weight: .medium)
        let convImage = UIImage(systemName: "bubble.left.and.bubble.right", withConfiguration: boldConfig)!
        let peopleImage = UIImage(systemName: "person.2", withConfiguration: boldConfig)!
        
        viewControllers = [
            generationNavigationController(rootViewController: flowViewController, title: "Flow", image: convImage),
            generationNavigationController(rootViewController: compositionViewController, title: "Composition", image: peopleImage)
        ]
    }
    
    // Функция для того чтоб сделать какие нибудь иконки через таб бар
    private func generationNavigationController(rootViewController: UIViewController, title: String, image: UIImage?)-> UIViewController {
    let navigationVC = UINavigationController(rootViewController: rootViewController)
    navigationVC.tabBarItem.title = title
    navigationVC.tabBarItem.image = image
    return navigationVC
    }
}
