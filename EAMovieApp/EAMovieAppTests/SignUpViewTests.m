//
//  SignUpViewTests.m
//  EAMovieApp
//
//  Created by EastAgile42 on 8/16/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import "AppTestHelper.h"


SpecBegin(SignUpViewTests)

__block NSString* userEmail;
__block NSString* userPassword;

beforeAll(^{
    userEmail = @"user@gmail.com";
    userPassword = @"123456789";
});

beforeEach(^{
    [tester resetAppState];
});

describe(@"signup view", ^{
   
    __block UITextField *emailTextField;
    __block UITextField *passwordTexfield;
    
    beforeEach(^{
        [tester tapViewWithAccessibilityLabel:SIGNUP_BUTTON];
        emailTextField = (UITextField*)[tester waitForViewWithAccessibilityLabel:EMAIL_TEXTFIELD];
        passwordTexfield = (UITextField*)[tester waitForViewWithAccessibilityLabel:PASSWORD_TEXTFIELD];
    });
    
    context(@"email text field", ^{
        
        it(@"shoud be first responder", ^{
            expect(emailTextField.isFirstResponder).to.beTruthy();
        });
        
        it(@"should have a correct email when entered an email text", ^{
            [tester enterText:userEmail intoViewWithAccessibilityLabel:EMAIL_TEXTFIELD];
            [tester expectView:emailTextField toContainText:userEmail];
        });
        
    });
    
    context(@"password text field", ^{
        
        it(@"should have a correct password when entered a password text", ^{
            [tester enterText:userPassword intoViewWithAccessibilityLabel:PASSWORD_TEXTFIELD];
            [tester expectView:passwordTexfield toContainText:userPassword];
        });
        
        it(@"should have a secure entry as text", ^{
            expect(passwordTexfield.isSecureTextEntry).to.beTruthy();
        });
        
    });
    
    context(@"pressed signup button", ^{
        
        beforeEach(^{
            [tester enterText:userEmail intoViewWithAccessibilityLabel:EMAIL_TEXTFIELD];
            [tester enterText:userPassword intoViewWithAccessibilityLabel:PASSWORD_TEXTFIELD];
            [tester tapViewWithAccessibilityLabel:SIGNUP_BUTTON];
        });
        
        it(@"1.should show the success alert", ^{
            [tester waitForViewWithAccessibilityLabel:LOADING_INDICATOR];
            [tester waitForAbsenceOfViewWithAccessibilityLabel:LOADING_INDICATOR];
            [tester waitForViewWithAccessibilityLabel:localized(SIGNUP_SUCCEED_ALERT_TITLE)];
        });
        
        it(@"2.should show the error alert", ^{
            [tester waitForViewWithAccessibilityLabel:LOADING_INDICATOR];
            [tester waitForAbsenceOfViewWithAccessibilityLabel:LOADING_INDICATOR];
        });
        
    });
    
});

afterAll(^{
    [AppTestHelper deleteCurrentTestAccount];
});

SpecEnd
