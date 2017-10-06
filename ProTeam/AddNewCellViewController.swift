//
//  AddNewCellViewController.swift
//  ProTeam
//
//  Created by Meier,Jesse A on 10/5/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//

import UIKit

class AddNewCellViewController: UIViewController {

    @IBOutlet weak var ProjectNameTF: UITextField!
    @IBOutlet weak var ClassTF: UITextField!
    @IBOutlet weak var DueDateTF: UITextField!
    @IBAction func NewProject(_ sender: Any) {
    }
    
    @IBOutlet weak var DataTF: UITextField!
    @IBOutlet weak var MemoTF: UITextField!
    @IBOutlet weak var LocationTF: UITextField!
    @IBAction func NewReminder(_ sender: Any) {
    }
    
    @IBOutlet weak var ContactNameTF: UITextField!
    @IBOutlet weak var EmailTF: UITextField!
    @IBOutlet weak var PhoneNumTF: UITextField!
    @IBAction func NewContact(_ sender: Any) {
    }
    @IBOutlet weak var PartnerNameTF: UITextField!
    @IBOutlet weak var ResponseTF: UITextField!
    @IBAction func NewResponse(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
