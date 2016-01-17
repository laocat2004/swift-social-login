//
//  SLViewController.swift
//  SocialLogin
//
//  Created by Paolo Musolino on 15/01/16.
//  Copyright © 2016 IQUII. All rights reserved.
//

import UIKit
import FacebookSDK
import FBSDKCoreKit
import FBSDKLoginKit
import TwitterKit
import Fabric

class SLViewController: UIViewController, SLDelegate {
    
    let authenticationManager: SLAuthenticationManager = SLAuthenticationManager.sharedInstance
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.insertFacebookLoginButton()
        self.authenticationManager.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: Buttons
    func insertFacebookLoginButton(){
        
        self.authenticationManager.setFbReadPermission(["public_profile",  "email"]) //si settano i permessi di fb
        self.authenticationManager.fbLoginButton.backgroundColor = UIColor.clearColor()
        self.authenticationManager.fbLoginButton.center = self.view.center
        self.authenticationManager.fbLoginButton.frame = CGRectMake(self.authenticationManager.fbLoginButton.frame.origin.x, 100, 177, 40)
        self.authenticationManager.fbLoginButton.center = self.view.center
        self.authenticationManager.fbLoginButton.setBackgroundImage(UIImage.init(named: "sl_btn_login_facebook"), forState: UIControlState.Normal)
        self.view.addSubview(self.authenticationManager.fbLoginButton)
    }
    
    
    //MARK: Authentication Manager Delegate
    
    //Facebook Delegates
    func fbLoggedInUser(loginResult:FBSDKLoginManagerLoginResult){
        print("login fb")
    }
    
    func fbLoggedOutUser(){
        print("logout fb")
    }
    
    func fbLoginViewError(loginResult:FBSDKLoginManagerLoginResult, error:NSError){
        print("errore fb")
    }
    
    //Twitter Delegates
    func twitterLoginButtonPressed(){
        
    }
    
    func twitterLoggedInUser(session:TWTRSession){
        
    }
    
    func twitterHandleError(error:NSError){
        
    }
    
    func twitterLoggedOutUser(){
        
    }
    
    //Native Login Delegates
    func tapOnNativeLoginButton(){
        
    }
    
    func requestOfNativeLoginWithEmail(email:String, password:String){
        
    }
    
    //Native Registration Delegates
    func tapOnNativeRegistrationButton(){
        
    }
    
    func requestOfNativeRegistrationWithEmail(email:String, password:String, name:String, surname:String){
        
    }
    
}

