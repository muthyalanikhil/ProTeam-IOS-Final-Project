//
//  FirstViewController.swift
//  ProTeam
//
//  Created by Picklo,Blake H on 10/5/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//

import UIKit

class ProjectsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int { // now we have 2 sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
    }
}

