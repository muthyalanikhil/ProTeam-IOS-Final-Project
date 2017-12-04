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
    
    @IBAction func DeleteB(_ sender: Any) {
        DateList.removeDate(ProjectLBL.text!)
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        ProjectLBL.text! = date.project
        DateLBL.text! = date.date
        MemoLBL.text! = date.memo
        LocationLBL.text! = date.location
        TimeLBL.text! = date.time
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
