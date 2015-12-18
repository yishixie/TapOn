//
//  submitPage.swift
//  final
//
//  Created by Yishi Xie on 11/30/15.
//  Copyright © 2015 Yishi Xie. All rights reserved.
//

import Foundation
import UIKit

class registerPage:  UIViewController{
    
    //    @IBOutlet weak var playerName: UITextField!
    
    //RANK
    var receivedRankCount: String = ""
    @IBOutlet weak var rankLabel: UILabel!
    
    //TAP
    var receivedTapCount: String = ""
    @IBOutlet weak var tapCountLabel: UILabel!
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?){
        view.endEditing(true)
        super.touchesBegan(touches, withEvent: event)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tapCountLabel.text = "With " + receivedTapCount + " taps,"
        rankLabel.text = "Your current rank is " + receivedRankCount + "!"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
    