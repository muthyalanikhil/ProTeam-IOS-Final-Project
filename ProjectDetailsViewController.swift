//
//  ProjectDetailsViewController.swift
//  ProTeam
//
//  Created by Meier,Jesse A on 12/3/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//

import UIKit

class ProjectDetailsViewController: UIViewController {
    var project:Project!
    
    @IBOutlet weak var nameLBL: UILabel!
    @IBOutlet weak var dateLBL: UILabel!
    @IBOutlet weak var descLBL: UILabel!
    @IBOutlet weak var membersLBL: UILabel!
    var str:String = ""
    // displays all of the project info in the place of the correct labels
    override func viewWillAppear(_ animated: Bool) {
        nameLBL.text = project.name
        dateLBL.text = project.dueDate
        descLBL.text = project.desc
        str = ""
        for mem in project.members {
            str = str + mem + "\n"
        }
        membersLBL.text = str

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = project.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
