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

class Project:Equatable,CustomStringConvertible{
    static func ==(lhs: Project, rhs: Project) -> Bool {
        return true
    }
    
    
    var description:String{
        return ""
    }
    
    var name:String?
    var endDate:DateComponents?
    var startDate:DateComponents?
    
    
    init(name:String, endDate:DateComponents,startDate:DateComponents){
        self.name = name
        self.endDate = endDate
        self.startDate = startDate
    }
}

var project1 = Project(name: "IOS - Project",endDate: DateComponents(year: 2013, month: 09, day:12, hour: 6, minute: 34), startDate: DateComponents(year: 2013, month: 09, day:12, hour: 6, minute: 34))
var project2 = Project(name: "Project Management",endDate: DateComponents(year: 2013, month: 09, day:12, hour: 6, minute: 34),startDate: DateComponents(year: 2013, month: 09, day:12, hour: 6, minute: 34))
var project3 = Project(name: "NWMSU",endDate: DateComponents(year: 2013, month: 09, day:12, hour: 6, minute: 34),startDate: DateComponents(year: 2013, month: 09, day:12, hour: 6, minute: 34))
var project4 = Project(name: "Check Please",endDate: DateComponents(year: 2013, month: 09, day:12, hour: 6, minute: 34),startDate: DateComponents(year: 2013, month: 09, day:12, hour: 6, minute: 34))
var project5 = Project(name: "Missouri Birders App",endDate: DateComponents(year: 2013, month: 09, day:12, hour: 6, minute: 34),startDate: DateComponents(year: 2013, month: 09, day:12, hour: 6, minute: 34))

struct CurrentProject{
    static var currentProjects:[Project] = [project1,project2,project3,project4,project5]
}

