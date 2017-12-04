//
//  ContactList.swift
//  ProTeam
//
//  Created by Meier,Jesse A on 11/2/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//

import Foundation

class ContactsList {
    static var contacts:[Contact] = [
        Contact(name: "Jesse Meier", PhoneNumber: "6605286971", email: "s518807@nwmissouri.com"),
        Contact(name: "Blake Picklo", PhoneNumber: "6605824514", email: "s578433@nwmissouri.edu"),
        Contact(name: "Nikhil Muthyala", PhoneNumber:"6602541548", email: "s458428@nwmissouri.edu")]
    
    static func numContacts() -> Int {
        return contacts.count
    }
    
    static func contactNum(_ index:Int) -> Contact {
        return contacts[index]
    }
    
    static func addNewContact(_ cont:Contact) -> Void {
        contacts.append(cont)
    }
    
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
