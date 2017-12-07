//
//  ContactList.swift
//  ProTeam
//
//  Created by Meier,Jesse A on 11/2/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//

import Foundation

class ContactsList {
    // we made some example contacts to show of the app
    static var contacts:[Contact] = [
        Contact(name: "Jesse Meier", PhoneNumber: "660-528-6971", email: "s518807@nwmissouri.com", projIn: "iOS Application"),
        Contact(name: "Blake Picklo", PhoneNumber: "660-582-4514", email: "s578433@nwmissouri.edu", projIn: "iOS Application"),
        Contact(name: "Nikhil Muthyala", PhoneNumber:"660-254-1548", email: "s458428@nwmissouri.edu", projIn: "iOS Application")]
    
    static func numContacts() -> Int {
        return contacts.count
    }
    
    static func contactNum(_ index:Int) -> Contact {
        return contacts[index]
    }
    
    static func addNewContact(_ cont:Contact) -> Void {
        contacts.append(cont)
    }
    // we added the ability to remove the contact after you click on it.
    static func removeContact(_ removee:String) -> Void {
        var count = 0
        for cont in contacts {
            if cont.name == removee {
                contacts.remove(at: count)
            }
            count += 1
        }
    }
}
