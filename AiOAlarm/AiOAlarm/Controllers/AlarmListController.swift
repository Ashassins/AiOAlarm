//
//  AlarmListController.swift
//  AiOAlarm
//
//  Created by Anna Shen on 12/30/22.
//

import Foundation
import UIKit

class AlarmListController : UIViewController {
    let alarmTableView: UITableView = {
        let myTable = UITableView(frame: .zero, style: .grouped)
        myTable.separatorStyle = .singleLine
//        myTable.register(WakeUpTableViewCell.self, forCellReuseIdentifier: "wakeup")
//        myTable.register(AlarmOtherTableViewCell.self, forCellReuseIdentifier: "other")
        return myTable
    }()
}
