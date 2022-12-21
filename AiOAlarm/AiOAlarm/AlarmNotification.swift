//
//  AlarmNotification.swift
//  AiOAlarm
//
//  Created by Anna Shen on 12/20/22.
//  References to AlertClock by 曾子庭 on 2022/5/5.

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
        content.sound = UNNotificationSound(named: UNNotificationSoundName(alarm.sound))
        
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
