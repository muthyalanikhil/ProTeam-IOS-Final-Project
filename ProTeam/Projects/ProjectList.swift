//
//  ProjectList.swift
//  ProTeam
//
//  Created by Meier,Jesse A on 12/3/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//
import Foundation

class ProjectsList {
    static var projects:[Project] = [
        Project(name: "IOS - Project", startDate: "August 1, 2017", desc: "test", members:["Blake Picklo", "Jesse Meier"]),
        Project(name: "Project Management", startDate: "September 2, 2017", desc: "test2", members:[]),
        Project(name: "NWMSU", startDate: "October 3, 2017", desc: "test2", members:[]),
        Project(name: "Check Please", startDate: "November 4, 2017", desc: "test4", members:[]),
        Project(name: "Missouri Birders App", startDate: "December 5, 2017", desc: "test 5", members:[])]
    
    static func numProjects() -> Int {
        return projects.count
    }
    
    static func projectNum(_ index:Int) -> Project {
        return projects[index]
    }
    
    static func addNewProject(_ proj:Project) -> Void {
        projects.append(proj)
    }
}
