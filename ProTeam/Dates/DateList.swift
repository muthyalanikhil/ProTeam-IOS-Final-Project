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
        Dates(date: "9/15/2017",memo:"Lets make this pro team",location:"Colden Hall"),
        Dates(date: "9/29/2017",memo:"dig a hole",location:"Library"),
        Dates(date: "10/2/2017",memo:"dig a hole",location:"Colden Hall"),
        Dates(date: "10/11/2017",memo:"dig a hole",location:"Home"),
        Dates(date: "11/2/2017",memo:"getting somewhere",location:"Computer Lab")
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
}
