//
//  ContactModel.swift
//  ProTeam
//
//  Created by Meier,Jesse A on 10/6/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//

import Foundation

class Contact {
    var name:String
    var PhoneNumber:String
    var email:String
    var projIn:String
    init(name:String,PhoneNumber:String,email:String,projIn:String){
        self.name = name
        self.PhoneNumber = PhoneNumber
        self.email = email
        self.projIn = projIn
    }
}
