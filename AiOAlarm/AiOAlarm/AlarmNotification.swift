//
//  AlarmNotification.swift
//  AiOAlarm
//
//  Created by Anna Shen on 12/20/22.
//  Heavy References to AlertClock by 曾子庭 on 2022/5/5.
//  Planning to refactor so that I understand how this works

import Foundation
import NotificationCenter
import AVFoundation

class AlarmNotification {
    static func addRequest(alarm: Alarm) {
        let current = UNUserNotificationCenter.current()
        let content = UNMutableNotificationContent()
       
        content.title = "Clock"
        content.subtitle = "Alarm"
        content.categoryIdentifier = "alarm"
//        content.sound = UNNotificationSound(named: UNNotificationSoundName(alarm.sound.soundName)) // FLAG : this probably isnt right
// TODO: soundName for UNNotification stuff alarm.sound.name??
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: alarm.date)
        let minute = calendar.component(.minute, from: alarm.date)
        var dateComponents = DateComponents()
        dateComponents.hour = hour
        dateComponents.minute = minute
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        let request = UNNotificationRequest(identifier: alarm.uuid.uuidString, content: content, trigger: trigger)
        current.add(request) { error in
           if(error == nil){
               print("successfully added request")
           } else{
               print("error when adding request")
           }
        }
    }
}
