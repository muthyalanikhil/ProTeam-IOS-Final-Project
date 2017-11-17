//
//  AddDateViewController.swift
//  ProTeam
//
//  Created by Picklo,Blake H on 11/2/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//

import UIKit

class AddDateViewController: UIViewController {

    @IBOutlet weak var DateTF: UITextField!
    @IBOutlet weak var MemoTF: UITextField!
    @IBOutlet weak var LocationTF: UITextField!
    
    
    @IBAction func Cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func Done(_ sender: Any) {
        let temp = Dates(date: DateTF.text!, memo: MemoTF.text!, location: LocationTF.text!)
        DateList.addNewDate(temp)
        dismiss(animated: true, completion: nil)
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
