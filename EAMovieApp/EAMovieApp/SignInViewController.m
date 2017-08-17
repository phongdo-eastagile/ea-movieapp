//
//  SignInViewController.m
//  EAMovieApp
//
//  Created by EastAgile42 on 8/15/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import "SignInViewController.h"

@interface SignInViewController ()

@end

@implementation SignInViewController

#pragma mark - View life-cycle

- (void)viewDidLoad {
    [super viewDidLoad];

    [self configureUI];
    [self configureUIAccessibility];
}

#pragma mark - UI Configuration

- (void)configureUI {
    [cancelButton setTitle:localized(CANCEL_BUTTON_TITLE) forState:UIControlStateNormal];
    [cancelButton roundedCorner:BUTTON_CORNER_RADIUS];
    
    [signinButton setTitle:localized(SIGNIN_BUTTON_TITLE) forState:UIControlStateNormal];
    [signinButton roundedCorner:BUTTON_CORNER_RADIUS];
    
    [signupButton setTitle:localized(SIGNUP_BUTTON_TITLE) forState:UIControlStateNormal];
    [forgotPasswordButton setTitle:localized(FORGOT_PASSWORD_BUTTON_TITLE) forState:UIControlStateNormal];
    
    [emailTextField setAttributedPlaceholder:[[NSAttributedString alloc] initWithString:localized(EMAIL_TEXT) attributes:@{NSForegroundColorAttributeName: UIColorFromRGB(AUTH_PLACEHOLDER_TEXT_COLOR)}]];
    [passwordTextField setAttributedPlaceholder:[[NSAttributedString alloc] initWithString:localized(PASSWORD_TEXT) attributes:@{NSForegroundColorAttributeName: UIColorFromRGB(AUTH_PLACEHOLDER_TEXT_COLOR)}]];
}

- (void)configureUIAccessibility {
    [signinButton setAccessibilityLabel:SIGNIN_BUTTON];
    [signupButton setAccessibilityLabel:SIGNUP_BUTTON];
    [cancelButton setAccessibilityLabel:CANCEL_BUTTON];
    [emailTextField setAccessibilityLabel:EMAIL_TEXTFIELD];
}

#pragma mark - UI Action

- (IBAction)didTapCancelButton:(UIButton*)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
