//
//  DatesModel.swift
//  ProTeam
//
//  Created by Meier,Jesse A on 10/6/17.
//  Copyright © 2017 Picklo,Blake H. All rights reserved.
//

import Foundation

class Dates {
    var project: String
    var date: String
    var memo: String
    var location: String
    var time: String
    init(project:String, date:String,memo:String,location:String, time:String){
        self.project = project
        self.date = date
        self.memo = memo
        self.location = location
        self.time = time
    }
}
