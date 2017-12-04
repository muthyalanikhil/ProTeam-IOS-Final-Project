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
    var startDate:String
    var desc:String
    
    init(name:String, startDate:String, desc:String){
        self.name = name
        self.startDate = startDate
        self.desc = desc
    }
}

