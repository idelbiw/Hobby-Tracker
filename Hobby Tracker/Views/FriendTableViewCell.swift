//
//  FriendTableViewCell.swift
//  Hobby Tracker
//
//  Created by Waseem Idelbi on 11/20/19.
//  Copyright © 2019 Waseem Idelbi. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var hometownLabel: UILabel!
    @IBOutlet var hobbiesLabel: UILabel!
    
    
    var friend: Friend? {
        didSet {
            self.updateViews()
        }
    }
    
    private func updateViews() {
        guard let friend = friend else {return}
        
        nameLabel.text = friend.name
        hometownLabel.text = friend.hometown
        hobbiesLabel.text = "\(friend.hobbies.count) hobbies"
    }

}
