//
//  AddFriendViewController.swift
//  Hobby Tracker
//
//  Created by Waseem Idelbi on 11/20/19.
//  Copyright © 2019 Waseem Idelbi. All rights reserved.
//

import UIKit

class AddFriendViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var hometownTextField: UITextField!
    @IBOutlet var hobby1TextField: UITextField!
    @IBOutlet var hobby2TextField: UITextField!
    @IBOutlet var hobby3TextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
