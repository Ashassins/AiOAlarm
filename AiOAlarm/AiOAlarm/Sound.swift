//
//  Sounds.swift
//  AiOAlarm
//
//  Created by Anna Shen on 12/20/22.
//

import Foundation
import MediaPlayer
import AudioToolbox // might not need, but idk

class Sound {
    var soundID = UUID()
    var soundName : String = ""
    //soundName = UILocalNotificationDefaultSoundName;

    var filepath : String = ""
    var sound = kSystemSoundID_Vibrate // temp
    
    func playSound() {
            AudioServicesPlaySystemSound(self.sound) // temp
        }
}
