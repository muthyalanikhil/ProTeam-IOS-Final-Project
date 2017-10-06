//
//  ProjectModel.swift
//  ProTeam
//
//  Created by Meier,Jesse A on 10/6/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//

import Foundation

class project {
    var name:String
    var projClass:String
    var dueDate:String
    
    init (name:String, projClass:String, dueDate:String) {
        self.name = name
        self.projClass = projClass
        self.dueDate = dueDate
    }
}
