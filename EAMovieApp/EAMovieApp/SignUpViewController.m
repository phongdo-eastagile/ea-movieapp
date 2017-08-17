//
//  SignUpViewController.m
//  EAMovieApp
//
//  Created by EastAgile42 on 8/15/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import "SignUpViewController.h"

@interface SignUpViewController ()

@end

@implementation SignUpViewController

#pragma mark - View life-cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configureUI];
    [self configureUIAccessibility];
}

#pragma mark - UI configuration

- (void)configureUI {
    [cancelButton setTitle:localized(CANCEL_BUTTON_TITLE) forState:UIControlStateNormal];
    [cancelButton roundedCorner:BUTTON_CORNER_RADIUS];
    
    [signupButton setTitle:localized(SIGNUP_BUTTON_TITLE) forState:UIControlStateNormal];
    [signupButton roundedCorner:BUTTON_CORNER_RADIUS];
    
    [signinButton setTitle:localized(SIGNIN_BUTTON_TITLE) forState:UIControlStateNormal];
    
    [emailTextField setAttributedPlaceholder:[[NSAttributedString alloc] initWithString:localized(EMAIL_TEXT) attributes:@{NSForegroundColorAttributeName: UIColorFromRGB(AUTH_PLACEHOLDER_TEXT_COLOR)}]];
    [emailTextField becomeFirstResponder];
    
    [passwordTextField setAttributedPlaceholder:[[NSAttributedString alloc] initWithString:localized(PASSWORD_TEXT) attributes:@{NSForegroundColorAttributeName: UIColorFromRGB(AUTH_PLACEHOLDER_TEXT_COLOR)}]];
}

- (void)configureUIAccessibility {
    [signupButton setAccessibilityLabel:SIGNUP_BUTTON];
    [signinButton setAccessibilityLabel:SIGNIN_BUTTON];
    [cancelButton setAccessibilityLabel:CANCEL_BUTTON];
    [emailTextField setAccessibilityLabel:EMAIL_TEXTFIELD];
    [passwordTextField setAccessibilityLabel:PASSWORD_TEXTFIELD];
}

#pragma mark - UI Action

- (IBAction)didTapCancelButton:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
