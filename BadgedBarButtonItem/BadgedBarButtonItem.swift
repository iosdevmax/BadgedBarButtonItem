//
//  BadgedBarButtonItem.swift
//  BadgedBarButtonItem
//
//  Created by Maksim Artemov on 17/07/2019.
//  Copyright © 2019 Max. All rights reserved.
//

import UIKit

class BadgedButtonItem: UIBarButtonItem {
    
    public func setBadge(with value: Int) {
        self.badgeValue = value
    }
    
    private var badgeValue: Int? {
        didSet {
            if let value = badgeValue,
                value > 0 {
                lblBadge.isHidden = false
                lblBadge.text = "\(value)"
            } else {
                lblBadge.isHidden = true
            }
        }
    }
    
    var tapAction: (() -> Void)?
    
    private let filterBtn = UIButton()
    private let lblBadge = UILabel()
    
    override init() {
        super.init()
        setup()
    }
    
    init(with image: UIImage?) {
        super.init()
        setup(image: image)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup(image: UIImage? = nil) {
        
        self.filterBtn.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        self.filterBtn.adjustsImageWhenHighlighted = false
        self.filterBtn.setImage(image, for: .normal)
        self.filterBtn.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        self.lblBadge.frame = CGRect(x: 20, y: 0, width: 15, height: 15)
        self.lblBadge.backgroundColor = .red
        self.lblBadge.clipsToBounds = true
        self.lblBadge.layer.cornerRadius = 7
        self.lblBadge.textColor = UIColor.white
        self.lblBadge.font = UIFont.systemFont(ofSize: 10)
        self.lblBadge.textAlignment = .center
        self.lblBadge.isHidden = true
        self.lblBadge.minimumScaleFactor = 0.1
        self.lblBadge.adjustsFontSizeToFitWidth = true
        self.filterBtn.addSubview(lblBadge)
        self.customView = filterBtn
    }
    
    @objc func buttonPressed() {
        if let action = tapAction {
            action()
        }
    }
    
}
