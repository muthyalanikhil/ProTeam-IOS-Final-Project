//
//  ListOfDates.swift
//  ProTeam
//
//  Created by Picklo,Blake H on 11/2/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//

import Foundation

class DateList {
    
    static var ListOfDates:[Dates] = [
        Dates(project: "Pro Team", date: "9/15/2017",memo:"Lets make this pro team",location:"Colden Hall", time: "8:00 am"),
        Dates(project: "English Homework", date: "9/29/2017",memo:"dig a hole",location:"Library", time: "10:00 am"),
        Dates(project: "Science Equations", date: "10/2/2017",memo:"dig a hole",location:"Colden Hall", time: "12:00 pm"),
        Dates(project: "Math Project", date: "10/11/2017",memo:"dig a hole",location:"Home", time: "3:00 pm"),
        Dates(project: "Art Project", date: "11/2/2017",memo:"getting somewhere",location:"Computer Lab", time: "4:20 pm")
    ]
    
    
    static func numDates()-> Int {
        return ListOfDates.count
    }
    static func DateNum(_ index:Int) -> Dates {
        return ListOfDates[index]
    }
    static func addNewDate(_ Da:Dates) -> Void {
        ListOfDates.append(Da)
    }
    static func removeDate(_ removee:String) -> Void {
        var count = 0
        for cont in ListOfDates {
            if cont.project == removee {
                ListOfDates.remove(at: count)
                
            }
            count += 1
        }
    }
}
