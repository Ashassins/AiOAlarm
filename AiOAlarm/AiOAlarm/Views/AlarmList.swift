//
//  AlarmList.swift
//  AiOAlarm
//
//  Created by Anna Shen on 12/25/22.
//

//import Foundation
import UIKit

class AlarmList : UITableViewCell{
    static var pagename = "AlarmListPage"

    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
    }

    let titleLabel:UILabel = {
        let tLabel = UILabel()
        tLabel.textColor = .white
        return tLabel
    }()

    let contentLabel:UILabel = {
       let cLabel = UILabel()
        cLabel.textColor = .lightGray
       return cLabel
    }()

    let chevronView: UIImageView = {
      let imageView = UIImageView(image: UIImage(systemName: "chevron.right"))
      imageView.tintColor = .lightGray
      return imageView
    }()
      
    func setup() {
        self.addSubview(titleLabel)
        self.addSubview(contentLabel)
        
        // doesnt work currently b/c snp is not found
//        titleLabel.snp.makeConstraints { make in
//           make.top.bottom.equalTo(self)
//           make.leading.equalTo(self).offset(14)
//        }
//
//        contentLabel.snp.makeConstraints { make in
//           make.top.bottom.equalTo(self)
//           make.trailing.equalTo(self).offset(-50)
//        }
    }
}
