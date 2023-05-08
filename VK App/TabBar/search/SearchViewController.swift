//
//  SearchViewController.swift
//  VK App
//
//  Created by Михаил on 02.05.2023.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SearchTableViewCell
        
        switch indexPath.row {
        case 0:
            cell.pic1.image = UIImage(named: "pic1")
            cell.pic2.image = UIImage(named: "pic2")
        case 1:
            cell.pic1.image = UIImage(named: "pic3")
            cell.pic2.image = UIImage(named: "pic4")
        default:
            cell.pic1.image = UIImage(named: "pic5")
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        return UIView()
    }
}
