//
//  TabBarControllerViewController.swift
//  VK App
//
//  Created by Михаил on 02.05.2023.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBarTitle()
        self.navigationItem.hidesBackButton = true
    }
    
    func setupNavigationBarTitle() {
        let label = UILabel()
        label.text = "VK App"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .black
        
        self.navigationItem.titleView = label
    }
}
