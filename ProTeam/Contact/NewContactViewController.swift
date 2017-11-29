//
//  ContactViewController.swift
//  ProTeam
//
//  Created by Meier,Jesse A on 10/5/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//

import UIKit

class NewContactViewController: UIViewController {
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var pNumTF: UITextField!
    @IBAction func cancelBTN(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func DoneBTN(_ sender: Any) {
        let temp = Contact(name: nameTF.text!, PhoneNumber: pNumTF.text!, email: emailTF.text!)
        ContactsList.addNewContact(temp)
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func DeleteBTN(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

