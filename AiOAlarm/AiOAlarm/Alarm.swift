//
//  Alarm.swift
//  AiOAlarm
//
//  Created by Anna Shen on 12/19/22.
//

import Foundation
import UserNotifications
import NotificationCenter

class Alarm { // inherits from EKObject?
    var id: Int
    var uuid = UUID()
    var name: String = ""
    var date: Date = Date() // Military time, based on user's local time I want this to default to 8am
    var hour: Int = 8 // defaults to 8 AM alarm
    var minute: Int = 0
    var second: Int = 0
    var repetitions : [Bool] // Sat - Sun
    var sound: String = "" // TBD // var soundname in EKAlarm (is an NSSound object)
//     var playlist: Int? // TBD
    var isOnOff = false
    {
        didSet{
                   if isOnOff{
                       AlarmNotification.addRequest(alarm: self)
                   } else{
                       UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
                   }
               }
    }
    var strobe = false // bool: does it strobe your flashlight
    var vibration = false
//     var createdBy; //USER
    //static var createdDate: Date
    var modified = false // has this alarm been modified before

    init(id: Int, name: String, repetitions: [Bool]) {
        self.id = 1
        self.name = "Alarm \(id)"
        self.repetitions = [false, false, false, false, false, false, false]
    }
    
}
