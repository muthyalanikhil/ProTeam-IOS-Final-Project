//
//  AddDateViewController.swift
//  ProTeam
//
//  Created by Picklo,Blake H on 11/2/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//

import UIKit

class AddDateViewController: UIViewController {

    @IBOutlet weak var ProjectTF: UITextField!
    @IBOutlet weak var DateTF: UITextField!
    @IBOutlet weak var MemoTF: UITextField!
    @IBOutlet weak var LocationTF: UITextField!
    @IBOutlet weak var TimeTF: UITextField!
    
    // this is the view for adding new dates we added a cancel and done button like the other add views.
    
    @IBAction func Cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func Done(_ sender: Any) {
        let temp = Dates(project: ProjectTF.text!, date: DateTF.text!, memo: MemoTF.text!, location: LocationTF.text!, time: TimeTF.text!)
        DateList.addNewDate(temp)
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
