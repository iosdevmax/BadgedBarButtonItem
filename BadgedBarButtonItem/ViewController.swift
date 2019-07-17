//
//  ViewController.swift
//  BadgedBarButtonItem
//
//  Created by Maksim Artemov on 17/07/2019.
//  Copyright © 2019 Max. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let btn = BadgedButtonItem(with: UIImage(named: "notif"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btn.badgeTextColor = .black
        btn.badgeTintColor = .yellow
        btn.position = .left
        btn.hasBorder = true
        btn.borderColor = .red
        btn.badgeSize = .medium
        
        self.navigationItem.rightBarButtonItem = btn
        
        btn.tapAction = {
            self.btn.setBadge(with: 4)
            self.btn.position = .right
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.btn.setBadge(with: 66)
            self.btn.position = .right

        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.btn.setBadge(with: 1)
            self.btn.position = .left

        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.btn.setBadge(with: 99)
            self.btn.position = .right

        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            self.btn.setBadge(with: 88)
            self.btn.position = .left

        }
        
    }

}

