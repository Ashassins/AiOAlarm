//
//  Alarm.swift
//  AiOAlarm
//
//  Created by Anna Shen on 12/19/22.
//

import Foundation

class Alarm { // inherits from EKObject?
    var id: Int
    var name: String = ""
//    var time; // Military time, based on user's local time
    var hour: Int = 8 // defaults to 8 AM alarm
    var minute: Int = 0
    var second: Int = 0
    var repetitions: [Int] = [0,0,0,0,0,0,0] //for every wednesday
//     var sound: Int? // TBD
//     var playlist: Int? // TBD
    var isOnOff = false
    var strobe = false // bool: does it strobe your flashlight

//     var createdBy; //USER
    //static var createdDate: Date
    var modified = false // has this alarm been modified before

    
    init(id: Int, name: String) {
        self.id = 1
        self.name = "Alarm \(id)"
    }
    
}
