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
        return ProjectsList.numProjects()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "project_cell", for: indexPath)
        let project = ProjectsList.projectNum(indexPath.row)
        cell.textLabel?.text = project.name
        let projectDate = project.startDate
        cell.detailTextLabel?.text = "Start Date: \(projectDate)"
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "projects" {
            let projectVC = segue.destination as! ProjectsViewController
            projectVC.project = ProjectsList.projects[(tableView.indexPathForSelectedRow?.row)!]
        }
    }
}
