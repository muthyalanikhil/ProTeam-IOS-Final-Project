//
//  ContactList.swift
//  ProTeam
//
//  Created by Meier,Jesse A on 11/2/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//

import Foundation

class contactsList {
    static var contacts:[Contact] = [Contact(name:"name", PhoneNumber:"124567891", email:"151548@gmail.com")]
    
    static func numContacts() -> Int {
        return contacts.count
    }
    
    static func contactNum(_ index:Int) -> Contact {
        return contacts[index]
    }
    
    static func addNewContact(_ cont:Contact) -> Void {
        contacts.append(cont)
    }
}
