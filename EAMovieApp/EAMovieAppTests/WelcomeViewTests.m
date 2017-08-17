//
//  WelcomeViewTests.m
//  EAMovieApp
//
//  Created by EastAgile42 on 8/15/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import "WelcomeViewController.h"

SpecBegin(WelcomeViewUITest)

describe(@"Welcome View", ^{
   
    it(@"should navigate to Sign-In view when tap on Sign-In button", ^{
        [tester tapViewWithAccessibilityLabel:SIGNIN_BUTTON];
        [tester waitForViewWithAccessibilityLabel:EMAIL_TEXTFIELD];
        [tester waitForViewWithAccessibilityLabel:SIGNUP_BUTTON];
    });
    
    it(@"should navigate to Sign-Up view when tap on Sign-Up button", ^{
        [tester tapViewWithAccessibilityLabel:SIGNUP_BUTTON];
        [tester waitForViewWithAccessibilityLabel:EMAIL_TEXTFIELD];
        [tester waitForViewWithAccessibilityLabel:SIGNIN_BUTTON];
    });
    
    afterEach(^{
        [tester tapViewWithAccessibilityLabel:CANCEL_BUTTON];
    });
    
});

SpecEnd
