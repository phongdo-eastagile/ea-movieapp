//
//  WelcomeViewController.m
//  EAMovieApp
//
//  Created by EastAgile42 on 8/15/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import "WelcomeViewController.h"

@interface WelcomeViewController ()

@end

@implementation WelcomeViewController

#pragma mark - View life-cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configureUI];
    [self configureUIAccessibility];
}

#pragma mark - UI configuration

- (void)configureUI {
    [signinButton setTitle:localized(SIGNIN_BUTTON_TITLE) forState:UIControlStateNormal];
    [signinButton roundedCorner:BUTTON_CORNER_RADIUS];
    
    [signupButton setTitle:localized(SIGNUP_BUTTON_TITLE) forState:UIControlStateNormal];
    [signupButton roundedCorner:BUTTON_CORNER_RADIUS];
    
    FAKFontAwesome *skipButtonImage = [FAKFontAwesome stepForwardIconWithSize:SKIP_IMAGE_SIZE];
    NSAttributedString *skipButtonImageAttributedString = skipButtonImage.attributedString;
    NSMutableAttributedString *skipButtonAttributedString = [[NSMutableAttributedString alloc] initWithString:localized(SKIP_BUTTON_TITLE)];
    [skipButtonAttributedString appendAttributedString: skipButtonImageAttributedString];
    [skipButtonAttributedString addAttribute:NSForegroundColorAttributeName value:UIColorFromRGB(SKIP_BUTTON_TITLE_COLOR) range:NSMakeRange(0, skipButtonAttributedString.length)];
    [skipButton setAttributedTitle:skipButtonAttributedString forState:UIControlStateNormal];
}

- (void)configureUIAccessibility {
    [signinButton setAccessibilityLabel:localized(SIGNIN_BUTTON_TITLE)];
    [signupButton setAccessibilityLabel:localized(SIGNUP_BUTTON_TITLE)];
    [skipButton setAccessibilityLabel:localized(SKIP_BUTTON_TITLE)];
}

@end
