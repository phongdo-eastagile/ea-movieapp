//
//  WelcomeViewTests.m
//  EAMovieApp
//
//  Created by EastAgile42 on 8/15/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import "WelcomeViewController.h"

SpecBegin(WelcomeViewTest)

describe(@"Welcome View", ^{
   
    it(@"should navigate to Sign-In View when pressed on Sign-In button", ^{
        [tester tapViewWithAccessibilityLabel:localized(SIGNIN_BUTTON_TITLE)];
    });
    
});

SpecEnd
