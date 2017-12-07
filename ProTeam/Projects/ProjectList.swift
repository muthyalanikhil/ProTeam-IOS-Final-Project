//
//  ProjectList.swift
//  ProTeam
//
//  Created by Meier,Jesse A on 12/3/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//
import Foundation

class ProjectsList {
    // some example projects for the project.. thats kinda meta
    static var projects:[Project] = [
        Project(name: "iOS Project", startDate: "August 1, 2017", desc: "Group Project Manager Application", members:["Blake Picklo", "Jesse Meier", "Nikhil Muthyala"]),
        Project(name: "Project Management", startDate: "September 2, 2017", desc: "Create your own business and generate sample data for it", members:["Linus Tena", "Reino Catharina"]),
        Project(name: "Chemistry Project", startDate: "November 4, 2017", desc: "Combine two elements together to make a new compound", members:["Zavanna Lonnie", "Philip Monroe"]),
        Project(name: "Government Project", startDate: "December 5, 2017", desc: "Create your own campaign and identify how you would run", members:["Dajana Samuel", "Tornike Malachi"])]
    
    static func numProjects() -> Int {
        return projects.count
    }
    
    static func projectNum(_ index:Int) -> Project {
        return projects[index]
    }
    
    static func addNewProject(_ proj:Project) -> Void {
        projects.append(proj)
    }
    static func removeProject(_ proj:String) -> Void {
        var count = 0
        for pro in projects {
            if pro.name == proj {
                projects.remove(at: count)
            }
            count += 1
        }
    }
}
