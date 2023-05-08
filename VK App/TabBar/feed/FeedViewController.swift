//
//  FeedViewController.swift
//  VK App
//
//  Created by Михаил on 02.05.2023.
//

import UIKit

class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    
    var posts: [Post] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        APIManager.shared.getPost(id: "post1", imageID: "pic1") { res1 in
            self.posts.append(res1!)
            APIManager.shared.getPost(id: "post2", imageID: "pic2") { res2 in
                self.posts.append(res2!)
                APIManager.shared.getPost(id: "post3", imageID: "pic3") { res3 in
                    self.posts.append(res3!)
                    APIManager.shared.getPost(id: "post4", imageID: "pic4") { res4 in
                        self.posts.append(res4!)
                        APIManager.shared.getPost(id: "post5", imageID: "pic5") { res5 in
                            self.posts.append(res5!)
                            DispatchQueue.main.async {
                                self.table.reloadData()
                            }
                        }
                    }
                }
            }
            
        }
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FeedTableViewCell
        cell.postName.text = posts[indexPath.row].name
        cell.postDate.text = posts[indexPath.row].date
        cell.postText.text = posts[indexPath.row].text
        cell.postImage.image = posts[indexPath.row].image
        
        return cell
    }

}
