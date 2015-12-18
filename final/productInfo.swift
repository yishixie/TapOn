//
//  productList.swift
//  final
//
//  Created by Yishi Xie on 12/5/15.
//  Copyright © 2015 Yishi Xie. All rights reserved.
//

import Foundation
import UIKit

class productInfo:  UIViewController{
    
    var timer = NSTimer ()
    

    @IBOutlet weak var cokeInfoTime: UILabel!
    
    @IBOutlet weak var cokeInfoRank: UILabel!
    
    var cokeInfoTimeCount = 59
    var cokeInfoRankCount = 24030
    
    func Counting(){
        cokeInfoTimeCount -= 1
        cokeInfoTime.text = "Ends in: 05:43:" + "\(cokeInfoTimeCount)"
        
        cokeInfoRankCount += 2
        cokeInfoRank.text = "Current Rank: " + "\(cokeInfoRankCount)"
    }
    
        override func viewDidLoad() {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("Counting"), userInfo: nil, repeats: true)
        
        
        
        
    }
    

}