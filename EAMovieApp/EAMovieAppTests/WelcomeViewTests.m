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
   
    it(@"should navigate to Sign-In View when pressed on Sign-In button", ^{
        [tester tapViewWithAccessibilityLabel:localized(SIGNIN_BUTTON_TITLE)];
        [tester waitForViewWithAccessibilityLabel:localized(EMAIL_TEXT)];
        [tester waitForViewWithAccessibilityLabel:localized(SIGNUP_BUTTON_TITLE)];
    });
    
    it(@"should navigate to Sign-Up View when pressed on Sign-Up button", ^{
        [tester tapViewWithAccessibilityLabel:localized(SIGNUP_BUTTON_TITLE)];
        [tester waitForViewWithAccessibilityLabel:localized(EMAIL_TEXT)];
        [tester waitForViewWithAccessibilityLabel:localized(SIGNIN_BUTTON_TITLE)];
    });
    
});

SpecEnd
