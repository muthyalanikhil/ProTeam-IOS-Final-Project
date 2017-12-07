//
//  ProjectModel.swift
//  ProTeam
//
//  Created by Meier,Jesse A on 10/6/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//


import Foundation
import CoreLocation
import UIKit

class Project {
    var name:String
    var dueDate:String
    var desc:String
    var members:[String]
    
    init(name:String, startDate:String, desc:String, members:[String]){
        self.name = name
        self.dueDate = startDate
        self.desc = desc
        self.members = members
    }
}


