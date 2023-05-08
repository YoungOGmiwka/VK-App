//
//  ViewController.swift
//  VK App
//
//  Created by Михаил on 28.04.2023.
//

import UIKit

class ViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let storyboard = UIStoryboard(name: "TabBar", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TabBar")
        self.navigationController?.pushViewController(vc, animated: false)
    }
}
