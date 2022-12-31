//
//  MainTabbingController.swift
//  AiOAlarm
//
//  Created by Anna Shen on 12/30/22.
//

import Foundation
import UIKit

class MainTabbingController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
    }
    
    func setupTabs() {
        self.tabBar.barTintColor = .clear
        self.tabBar.tintColor = .blue // TODO: should eventually set too user chosen color
        
//        let worldClocks = UINavigationController
        let alarmList = UINavigationController(rootViewController: AlarmListController())
//        let userSettings =
//        let timerPage =
//        let friendsList =
        
        alarmList.title = "Alarms"
        
    }
}
