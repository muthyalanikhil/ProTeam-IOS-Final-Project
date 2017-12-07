//
//  AddProjectViewController.swift
//  ProTeam
//
//  Created by Meier,Jesse A on 12/3/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//

import UIKit

class AddProjectViewController: UIViewController {

    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var descTF: UITextField!
    let membersIn:[String] = []
    // cancel button
    @IBAction func cancelBTN(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    // Done button
    @IBAction func doneBTN(_ sender: Any) {
        let temp = Project(name: nameTF.text!, startDate: dateTF.text!, desc: descTF.text!, members:membersIn)
        ProjectsList.addNewProject(temp)
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
