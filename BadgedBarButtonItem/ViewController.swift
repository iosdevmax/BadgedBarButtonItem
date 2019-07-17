//
//  ViewController.swift
//  BadgedBarButtonItem
//
//  Created by Maksim Artemov on 17/07/2019.
//  Copyright © 2019 Max. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let btn = BadgedButtonItem(with: UIImage(named: "cart"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btn.badgeTextColor = .black
        btn.badgeTintColor = .yellow
        btn.position = .left
        
        self.navigationItem.rightBarButtonItem = btn
        
        btn.tapAction = {
            self.btn.setBadge(with: 1)
        }
        
    }

}

