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
    @IBAction func cancelBTN(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func doneBTN(_ sender: Any) {
        let temp = Project(name: nameTF.text!, startDate: dateTF.text!, desc: descTF.text!)
        ProjectsList.addNewProject(temp)
        self.dismiss(animated: true, completion: nil)
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
