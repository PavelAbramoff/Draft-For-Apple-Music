//
//  TabBarController-3.swift
//  Draft-For-Apple-Music
//
//  Created by Pavel Абрамов on 25.08.2022.
//

import UIKit

class TabBarController_3: UITabBarController, UITabBarControllerDelegate {
    
   override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        self.selectedIndex = 1
        generationTabBar()
        setupMidleButton()
}
    
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
            ),
        ]
    }
    
    private func gererateVC(viewController: UIViewController, title: String, image: UIImage?) ->
    UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
    
    func setupMidleButton() {
        let middleButton = UIButton(frame: CGRect(
            x: self.view.bounds.width / 25,
            y: -20,
            width: 60,
            height: 60)
        )
        
        middleButton.setBackgroundImage(UIImage(named: "home-icon-bd"), for: .normal)
        middleButton.layer.shadowColor = UIColor.black.cgColor
        middleButton.layer.shadowOpacity = 0.1
        middleButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        
        self.tabBar.addSubview(middleButton)
        middleButton.addTarget(self, action: #selector(menuButtonAction), for: .touchUpInside)
        
        self.view.layoutIfNeeded()
    }
    
    @objc func menuButtonAction(sender: UIButton) {
        self.selectedIndex = 1
    }
    
}
