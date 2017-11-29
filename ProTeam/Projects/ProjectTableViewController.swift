//
//  ProjectTableViewController.swift
//  ProTeam
//
//  Created by Muthyala,Nikhil on 11/2/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//

import UIKit

class ProjectTableViewController: UITableViewController{

    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.navigationItem.title = "Current Projects"
        tableView.register(ProjectTableViewCell.self, forCellReuseIdentifier: "project_cell")
    }

    override func viewWillAppear(_ animated:Bool){
        tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return CurrentProject.currentProjects.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "project_cell", for: indexPath)
        let project = CurrentProject.currentProjects[indexPath.row]
        cell.textLabel?.text = project.name
        let userCalendar = Calendar.current
        let projectDate = userCalendar.date(from: project.endDate!)!
        cell.detailTextLabel?.text = "Due Date: \(projectDate)"
        return cell
    }
}
