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

    @IBOutlet weak var nameLBL: UILabel!
    @IBOutlet weak var phoneLBL: UILabel!
    @IBOutlet weak var emailLBL: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
//        nameLBL.text = contact.name
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    
}
