//
//  User.swift
//  AiOAlarm
//
//  Created by Anna Shen on 12/20/22.
//

import Foundation

class User {
    var id = UUID()
    var spotifyPremium = false
    var premium = false
    var createdDate = Date()
//    var friends = 0;
//    var allowNotifs = false
//    var allowSound = false
    var alarms : [Alarm]
    var isFriends : Bool?
    
    func setSpotifyPremium(val : Bool) {
        self.spotifyPremium = val
    }
    
    func setPremium(val : Bool) {
        self.premium = val
    }
    
//    func validateSpotify(clientID: String) {
//        let SpotifyClientID = clientID
//        let SpotifyRedirectURL = URL(string: "spotify-ios-quick-start://spotify-login-callback")!
//
//        lazy var configuration = SPTConfiguration(
//          clientID: SpotifyClientID,
//          redirectURL: SpotifyRedirectURL
//        )
//    }
//
    
    init (alarms: [Alarm]) {
        self.alarms = []
    }
}

