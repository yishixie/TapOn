//
//  submitPage.swift
//  final
//
//  Created by Yishi Xie on 11/30/15.
//  Copyright © 2015 Yishi Xie. All rights reserved.
//

import Foundation
import UIKit

class submitPage:  UIViewController, UITextFieldDelegate{
    
//    @IBOutlet weak var playerName: UITextField!
    
    //RANK
    var receivedRankCount: String = ""
    @IBOutlet weak var rankLabel: UILabel!
    
    //TAP
    var receivedTapCount: String = "0"
    @IBOutlet weak var tapCountLabel: UILabel!
    
    
    //User Input
    @IBOutlet weak var emailFied: UITextField!
    
    @IBOutlet weak var passwordFied: UITextField!
    
    @IBOutlet weak var scrollViewConnect: UIScrollView!
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        emailFied.resignFirstResponder()
        passwordFied.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        scrollViewConnect.setContentOffset(CGPointMake(0, 170), animated: true)
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        scrollViewConnect.setContentOffset(CGPointMake(0, 0), animated: true)
    }
    
    //Sign up
    var signStatus = false
    @IBOutlet weak var signUpLabel: UILabel!
    @IBAction func signUp(sender: AnyObject) {
        if signStatus == false{
        signUpLabel.text = "Log In"
        signStatus = true
        passwordFied.placeholder = "Create Password"
        }
        else{signUpLabel.text = "Sign Up"
        signStatus = false
        passwordFied.placeholder = "Password"}
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?){
        view.endEditing(true)
        super.touchesBegan(touches, withEvent: event)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(receivedTapCount == "0")
        {tapCountLabel.text = "Welcome ~"
        rankLabel.text = "Join now to tap the most out of Tap On!"
        }
        else{
        tapCountLabel.text = "With " + receivedTapCount + " taps,"
        rankLabel.text = "Your current rank is " + receivedRankCount + "!"}
    }
    
    
    //MARK: pass the name to the complete page
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        // Get the new view controller using [segue destinationViewController].
//        let thirdScene = segue.destinationViewController as! completePage
//        // Pass the selected object to the new view controller.
//        thirdScene.receivedName = playerName.text!
//        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    }
    