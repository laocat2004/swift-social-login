//
//  SLFacebookTests.swift
//  SocialLogin
//
//  Created by Paolo Musolino on 18/01/16.
//  Copyright © 2016 IQUII. All rights reserved.
//

import XCTest
@testable import SocialLogin
import FBSDKCoreKit
import FBSDKLoginKit

class SLFacebookTests: XCTestCase, SLDelegate {
    
    let authenticationManager: SLAuthenticationManager = SLAuthenticationManager.sharedInstance
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        self.authenticationManager.delegate = self;
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testFbLogin() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        XCTAssertNotNil(self.authenticationManager.fbLoginManager)
        XCTAssertNotNil(self.authenticationManager.readPermissions)
    }
    
    func testFbLogout(){
        authenticationManager.logoutFromFacebook()
        XCTAssertNil(FBSDKAccessToken.currentAccessToken())
    }
}
