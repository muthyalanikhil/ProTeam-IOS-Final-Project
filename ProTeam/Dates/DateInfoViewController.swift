//
//  DateInfoViewController.swift
//  ProTeam
//
//  Created by Picklo,Blake H on 11/17/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//

import UIKit

class DateInfoViewController: UIViewController {
    var date:Dates!

    @IBOutlet weak var ProjectLBL: UILabel!
    @IBOutlet weak var DateLBL: UILabel!
    @IBOutlet weak var MemoLBL: UILabel!
    @IBOutlet weak var LocationLBL: UILabel!
    @IBOutlet weak var TimeLBL: UILabel!
    // the delete button for the dates
    @IBAction func DeleteB(_ sender: Any) {
        DateList.removeDate(ProjectLBL.text!)
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // this displays the data about the dates in the spots of these labels
    override func viewWillAppear(_ animated: Bool) {
        ProjectLBL.text! = date.project
        DateLBL.text! = date.date
        MemoLBL.text! = date.memo
        LocationLBL.text! = date.location
        TimeLBL.text! = date.time
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
