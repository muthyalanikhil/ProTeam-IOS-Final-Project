//
//  ContactsTableViewController.swift
//  ProTeam
//
//  Created by Meier,Jesse A on 11/2/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {

    @IBAction func addNewContact(segue:UIStoryboardSegue) {
    }
    
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
        return ContactsList.numContacts()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact_list", for: indexPath)
        let contact = ContactsList.contactNum(indexPath.row)
        cell.textLabel?.text = contact.name
        cell.detailTextLabel?.text = "P: \(contact.PhoneNumber)     E: \(contact.email)"

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "projects" {
            let projectVC = segue.destination as! ProjectsViewController
            projectVC.project = ContactsList.contacts[(tableView.indexPathForSelectedRow?.row)!]
        }
    }
}
