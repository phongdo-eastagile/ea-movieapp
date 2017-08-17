//
//  SignUpViewController.h
//  EAMovieApp
//
//  Created by EastAgile42 on 8/15/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SVProgressHUD+Extension.h"
#import "AuthenticationRepository.h"
#import "UserEntity.h"

@interface SignUpViewController : UIViewController {
    IBOutlet UIButton *signinButton;
    IBOutlet UIButton *cancelButton;
    IBOutlet UIButton *signupButton;
    IBOutlet UITextField *emailTextField;
    IBOutlet UITextField *passwordTextField;
}

- (IBAction)didTapCancelButton:(UIButton*)sender;
- (IBAction)didTapSignupButton:(UIButton*)sender;

@end
