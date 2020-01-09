//
//  BaseTabBarController.swift
//  AppStore
//
//  Created by Frank Ferreira on 08/01/20.
//  Copyright © 2020 Frank Ferreira. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let greenViewController = UIViewController()
        greenViewController.view.backgroundColor = .white
        greenViewController.navigationItem.title = "Today"
        
        let greenNavController = UINavigationController(rootViewController: greenViewController)
        greenNavController.tabBarItem.title = "Today"
        greenNavController.tabBarItem.image = #imageLiteral(resourceName: "today_icon")
        greenNavController.navigationBar.prefersLargeTitles = true
        
        let redViewController = UIViewController()
        redViewController.view.backgroundColor = .white
        redViewController.navigationItem.title = "Apps"
        
        let redNavController = UINavigationController(rootViewController: redViewController)
        redNavController.tabBarItem.title = "Apps"
        redNavController.tabBarItem.image = #imageLiteral(resourceName: "apps")
        redNavController.navigationBar.prefersLargeTitles = true
        
        let blueViewController = UIViewController()
        blueViewController.view.backgroundColor = .white
        blueViewController.navigationItem.title = "Search"
        
        let blueNavController = UINavigationController(rootViewController: blueViewController)
        blueNavController.tabBarItem.title = "Search"
        blueNavController.tabBarItem.image = #imageLiteral(resourceName: "search")
        blueNavController.navigationBar.prefersLargeTitles = true
        
        viewControllers = [
            greenNavController,
            redNavController,
            blueNavController
        ]
        
    }
}
