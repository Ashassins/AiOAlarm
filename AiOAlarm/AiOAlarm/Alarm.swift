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
//    var hour: Int = 8 // defaults to 8 AM alarm //    var minute: Int = 0 //    var second: Int = 0
    var repetitions : [Int] // Sat - Sun
    
    // Consider switching to storing a sound index instead
    var sound: Sound? // TBD // var soundname in EKAlarm (is an NSSound object)
    var soundName: String = "" // TEMP
// Probably remove these
//    var strobe = false // bool: does it strobe your flashlight
//    var vibration = false
    private var createdBy: User //USER
    static var createdDate: Date = Date()
    var modified = false // has this alarm been modified before
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
   
    init(id: Int, name: String, repetitions: [Bool], sound: Sound, createdBy: User) {
        self.id = id
        self.name = "Alarm \(id)"
        self.repetitions = [0, 0, 0, 0, 0, 0, 0]
        self.sound = sound
        self.createdBy = createdBy
    }
    
    private func setCreatedBy (value : User) {
        self.createdBy = value
    }
    
    func modifyRepetition(index: Int, value: Int) {
        self.repetitions[index] = value
    }
    
    func getRepetitionCount() -> Int {
        return self.repetitions.reduce(0, { x, y in
            x + y
        })
    }
    
    func setOnOff(value : Bool) {
        self.isOnOff = value
    }
}
