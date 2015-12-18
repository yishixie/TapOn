//
//  completePage.swift
//  final
//
//  Created by Yishi Xie on 11/30/15.
//  Copyright © 2015 Yishi Xie. All rights reserved.
//

import Foundation
import UIKit

class completePage:  UIViewController{
    
//    var receivedName = String()
    
    @IBOutlet weak var nameLabel: UILabel!
    
    

    @IBOutlet weak var tapOtherButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Thanks for tapping!"
        
        tapOtherButton.layer.cornerRadius = 10
        tapOtherButton.layer.borderWidth = 1
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}