//
//  DateTableViewController.swift
//  ProTeam
//
//  Created by Picklo,Blake H on 11/2/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//

import UIKit

class DateTableViewController: UITableViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DateList.numDates()
    }
    // sets up the table of dates
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Date_cell", for: indexPath)
        let Date = DateList.DateNum(indexPath.row)
        cell.textLabel?.text = Date.project
        cell.detailTextLabel?.text = Date.date

        return cell
    }
    // brings user to info about dates when clicking on one of the cells
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "newDate" {
        let DateVC = segue.destination as! DateInfoViewController
        DateVC.date = DateList.ListOfDates[(tableView.indexPathForSelectedRow?.row)!]
    }
    }

}
