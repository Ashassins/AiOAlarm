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
    //var playlist: Int? // TBD
    var type: SoundType
    var filepath : String = ""
    var sound = kSystemSoundID_Vibrate // temp
    
    func playSound() {
        AudioServicesPlaySystemSound(self.sound) // temp
    }
    
    enum SoundType {
        case None, File, Spotify, Apple, Vibration, Strobe, BuiltIn
    }
    
    func setSound () {
        switch (self.type) {
            case .None: break
            case .File: break
            case .Spotify: break
            case .Apple: break
            case .Vibration: break
            case .Strobe: break
            case .BuiltIn: break
        }
    }
    
    init (type: SoundType) {
        self.type = SoundType.None // Get Default
    }
}
