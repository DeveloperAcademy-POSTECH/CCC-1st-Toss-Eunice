//
//  TabBarViewController.swift
//  CCC-1st-Toss-Eunice
//
//  Created by Hyorim Nam on 2022/07/07.
//

import UIKit

class TabBarViewController: UITabBarController {

    // ref: https://github.com/DeveloperAcademy-POSTECH/CCC-1st-Toss-Brown/blob/main/TossClone/Screens/Screens/TabBarViewController.swift
    func configureTabBar() {
        self.tabBar.tintColor = .label
        self.tabBar.layer.cornerRadius = 20
        self.tabBar.layer.masksToBounds = true
        self.tabBar.layer.backgroundColor = UIColor.systemBackground.cgColor
        self.tabBar.layer.borderColor = UIColor.systemGray5.cgColor
        self.tabBar.layer.borderWidth = 0.4
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureTabBar() 
    }

}
