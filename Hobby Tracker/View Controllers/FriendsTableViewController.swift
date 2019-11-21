//
//  ViewController.swift
//  Hobby Tracker
//
//  Created by Waseem Idelbi on 11/14/19.
//  Copyright © 2019 Waseem Idelbi. All rights reserved.
//

import UIKit

class FriendsTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    

    @IBOutlet var tableView: UITableView!
    
    var friends: [Friend] = [Friend(name: "waseem", hometown: "syria", hobbies: ["smash bros", "watch naruto"])]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as? FriendTableViewCell else { return UITableViewCell() }
        
        let friend = friends[indexPath.row]
        cell.friend = friend
        return cell
       }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddFriendModalSegue" {
            if let addFriendVC = segue.destination as? AddFriendViewController {
                addFriendVC.delegate = self
            }
        }
    }

    
}

extension FriendsTableViewController: AddFriendDelegate {
    func friendWasCreated(friend: Friend) {
        friends.append(friend)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
    }
}
