//
//  ContactViewController.swift
//  ProTeam
//
//  Created by Meier,Jesse A on 10/5/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//

import UIKit
    
class NewContactViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    // These allows the user to add new contacts we have the conacel and done buttons but also added a picker view, so you can associate the contact with what project they are working on with you.
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var pNumTF: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    
    var ProjectIn:String = ""
    
    @IBAction func cancelBTN(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func DoneBTN(_ sender: Any) {
        let temp = Contact(name: nameTF.text!, PhoneNumber: pNumTF.text!, email: emailTF.text!, projIn:ProjectIn)
        for project in ProjectsList.projects {
            if project.name == ProjectIn {
                project.members.append(nameTF.text!)
            }
        }
        ContactsList.addNewContact(temp)
        self.dismiss(animated: true, completion: nil)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    // jesse's crowning moments with the creation of the picker view
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ProjectsList.projects[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ProjectsList.projects.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        ProjectIn = ProjectsList.projects[row].name
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

