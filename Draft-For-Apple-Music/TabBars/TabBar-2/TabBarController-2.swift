//
//  TabBarController-2.swift
//  Draft-For-Apple-Music
//
//  Created by Pavel Абрамов on 25.08.2022.
//

import UIKit

class TabBarController_2: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generationTabBar()
        setTabBarAppearance()
    }
    
    // Создаем TabBar
    private func generationTabBar(){
        viewControllers = [
            gererateVC(
                viewController: FirstViewController(),
                title: "Home",
                image: UIImage(systemName: "house.fill")
            ),
            gererateVC(
                viewController: SecondViewController(),
                title: "Person info",
                image: UIImage(systemName: "person.fill")
            ),
            gererateVC(
                viewController: ThirdViewController(),
                title: "Settings",
                image: UIImage(systemName: "slider.horizontal.3")
            )
        ]
    }
    
    private func gererateVC(viewController: UIViewController, title: String, image: UIImage?) ->
    UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
    
    // Настраиваем отображение
    private func setTabBarAppearance() {
        let positionOnX: CGFloat = 10
        let positionOnY: CGFloat = 14
        let width = tabBar.bounds.width - positionOnX * 2
        let height = tabBar.bounds.height + positionOnY * 2
        
        let roundlayer = CAShapeLayer()
        
        let bezierPath = UIBezierPath(
            roundedRect: CGRect(
                x: positionOnX,
                y: tabBar.bounds.minY - positionOnY,
                width: width,
                height: height
            ),
            cornerRadius: height / 2
        )
        roundlayer.path = bezierPath.cgPath
        
        tabBar.layer.insertSublayer(roundlayer, at: 0)
        tabBar.itemWidth = width / 5
        tabBar.itemPositioning = .centered
        
        // Указываем цвета
        roundlayer.fillColor = UIColor.mainWhite.cgColor // для слоя
        
        tabBar.tintColor = .tabaBarItemAccent // выделенный элемнет таб
        tabBar.unselectedItemTintColor = .tabBarItemLight // не выделенный элемент
    }
}
