//
//  launchPage.swift
//  final
//
//  Created by Yishi Xie on 12/7/15.
//  Copyright © 2015 Yishi Xie. All rights reserved.
//

import Foundation
import UIKit

class launchPage:  UIViewController{
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        startButton.layer.borderWidth = 1
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}