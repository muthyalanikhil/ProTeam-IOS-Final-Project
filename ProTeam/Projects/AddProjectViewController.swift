//
//  AddProjectViewController.swift
//  ProTeam
//
//  Created by Muthyala,Nikhil on 11/29/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//

import UIKit

class AddProjectViewController: UIViewController {

    @IBAction func cancel(_ sender: Any) {
         self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func done(_ sender: Any) {
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
