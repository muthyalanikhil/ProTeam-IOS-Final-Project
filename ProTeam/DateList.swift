//
//  ListOfDates.swift
//  ProTeam
//
//  Created by Picklo,Blake H on 11/2/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//

import Foundation

class DateList {
    static var ListOfDates:[Date] = [
        Date(date: "11/2/2017",memo:"Lets make this pro team",location:"Colden Hall")
    ]
    
    
    static func numDates()-> Int {
        return ListOfDates.count
    }
    static func Date(_ index:Int) -> Date {
        return ListOfDates[index]
    }
}
