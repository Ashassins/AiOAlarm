//
//  AlarmHeader.swift
//  AiOAlarm
//
//  Created by Anna Shen on 1/1/23.
//

import UIKit

class AlarmHeader : UIView {
    override init(frame: CGRect) {
       super.init(frame: frame)
       self.backgroundColor = .black // or user preference
       setup()
    }
    
    required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
    }

    var headerLabel : UILabel = { // might need an = here?
        let hLabel = UILabel()
        hLabel.textColor = .white // or UserPreference
        hLabel.font = UIFont.boldSystemFont(ofSize: 20) // or user preference
        return hLabel
    }()
    
    let imageView : UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white //or userpref
        return imageView
    }()
    
    func setup() {
        let stackView = UIStackView(arrangedSubviews: [imageView, headerLabel])
        self.addSubview(stackView)
        // This is SnapKit stuff
//        stackView.snp.makeConstraints { make in
//            make.top.leading.bottom.equalToSuperview()
//            make.trailing.lessThanOrEqualToSuperview()
//        }
    }
}
