//
//  CustomTabBarController.swift
//  TabBarController
//
//  Created by 김수정 on 2021/03/05.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
    }
        
    func setTabBar() {
        guard let greenVC = self.storyboard?.instantiateViewController(identifier: "GreenVC") as? GreenVC,
        let blue = self.storyboard?.instantiateViewController(identifier: "Blue") as? Blue
        else {return
        }
        
        greenVC.tabBarItem.title = "Home"
        greenVC.tabBarItem.image = UIImage(systemName: "house")
        greenVC.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        
        blue.tabBarItem.title = "Profile"
        blue.tabBarItem.image = UIImage(systemName: "person")
        blue.tabBarItem.selectedImage = UIImage(systemName: "person.fill")
        setViewControllers([greenVC, blue], animated: true) }
    
}
