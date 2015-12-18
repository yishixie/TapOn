//
//  ViewController.swift
//  final
//
//  Created by Yishi Xie on 10/28/15.
//  Copyright © 2015 Yishi Xie. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation


class productDetail: UIViewController {
    //Use local video file
    let path = NSBundle.mainBundle().pathForResource("video", ofType:"mp4")
    var player : AVPlayer?
    
    
    //MARK: count number setup
    var timerCount = 0
    var rankCount = 24036
    var timerRunning = false
    var timer = NSTimer ()
    
    
    func Counting(){
        rankCount += 4
        rankLabel.text = "\(rankCount)"
        rankLabel.textColor = UIColor.whiteColor()
        timerLabel.textColor = UIColor.whiteColor()
        plus1.textColor = UIColor.blackColor()
        plus2.textColor = UIColor.blackColor()
        plus3.textColor = UIColor.blackColor()
        minus1.textColor = UIColor.blackColor()
        minus2.textColor = UIColor.blackColor()
        minus3.textColor = UIColor.blackColor()
    }
    
    @IBOutlet weak var logan: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var iconLeft: UIImageView!
    @IBOutlet weak var iconRight: UIImageView!
    @IBOutlet weak var rankLabel: UILabel!
    
    @IBOutlet weak var plus1: UILabel!
    @IBOutlet weak var plus2: UILabel!
    @IBOutlet weak var plus3: UILabel!
    @IBOutlet weak var minus1: UILabel!
    @IBOutlet weak var minus2: UILabel!
    @IBOutlet weak var minus3: UILabel!
    //MARK: submit button
    @IBAction func submitButton(sender: AnyObject) {
        if let player = self.player{
            player.pause()
        }
    }
    
    @IBOutlet weak var imageIconLabel: UIButton!
    @IBAction func imageIcon(sender: AnyObject) {
        timerCount += 1
        rankCount -= 7
        rankLabel.textColor = UIColor.orangeColor()
        timerLabel.textColor = UIColor.orangeColor()
        timerLabel.text = "\(timerCount)"
        rankLabel.text = "\(rankCount)"
        plus1.textColor = UIColor.whiteColor()
        plus2.textColor = UIColor.whiteColor()
        plus3.textColor = UIColor.whiteColor()
        minus1.textColor = UIColor.whiteColor()
        minus2.textColor = UIColor.whiteColor()
        minus3.textColor = UIColor.whiteColor()

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: start timer
                    timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("Counting"), userInfo: nil, repeats: true)
        
        
        // Make a player without controller
        player = AVPlayer(URL: NSURL(fileURLWithPath: path!))
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.bounds
        self.view.layer.addSublayer(playerLayer)
        
        player!.play()
        
    }
    
    //MARK: Back from the third screen to continue playing the video
    override func viewDidAppear(animated: Bool) {
        if let player = self.player{
            player.play()
        }
    }
    
    //MARK: pass the RANK and TAP counts to the submit page
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        let secondScene = segue.destinationViewController as! submitPage
        // Pass the tap number
        let sendTapCount = String(timerCount)
        secondScene.receivedTapCount = sendTapCount
        let sendRankCount = String(rankCount)
        secondScene.receivedRankCount = sendRankCount
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
