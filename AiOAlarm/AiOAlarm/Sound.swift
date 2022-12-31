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
    enum SoundType {
        case None, File, Spotify, Apple, Vibration, Strobe, BuiltIn
    }
    var soundID = UUID()
    var soundName : String = ""
     //var playlist: Int? // TBD
    var type: SoundType
    var filepath : String = ""
    var sound = kSystemSoundID_Vibrate // temp
    
    init (type: SoundType) {
        self.type = SoundType.None // Get Default
    }
    
    func setType (value : Sound.SoundType) {
        self.type = value
    }
    
    func setSound (soundType : Sound.SoundType) {
        switch (soundType) { // TODO: this. 
            case .None: break
            case .File: break
            case .Spotify: break
            case .Apple: break
            case .Vibration: break
            case .Strobe: break
            case .BuiltIn: break
        }
    }
    
    func playSound() {
        AudioServicesPlaySystemSound(self.sound) // temp
    }
    
    func setFilepath (value : String) {
        self.filepath = value
    }
    
    func setSoundName (value : String) {
        self.soundName = value
    }
}
