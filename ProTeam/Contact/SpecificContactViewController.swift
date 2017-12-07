//
//  SpecificContactViewController.swift
//  ProTeam
//
//  Created by Meier,Jesse A on 11/17/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//

import UIKit

class SpecificContactViewController: UIViewController {
    var contact:Contact!
// In this we listed out the details of the contact using the three labels and added a done and cancel button, also added functionality so the info shows up when the view opens up.
    @IBOutlet weak var nameLBL: UILabel!
    @IBOutlet weak var phoneLBL: UILabel!
    @IBOutlet weak var emailLBL: UILabel!
    @IBAction func deleteBTN(_ sender: Any) {
        ContactsList.removeContact(nameLBL.text!)
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        nameLBL.text = contact.name
        phoneLBL.text = contact.PhoneNumber
        emailLBL.text = contact.email
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = contact.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
