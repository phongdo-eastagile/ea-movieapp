//
//  SVProgressHUD+Extension.m
//  EAMovieApp
//
//  Created by EastAgile42 on 8/16/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import "SVProgressHUD+Extension.h"

@implementation SVProgressHUD (Extension)

+ (void)showSuccessWithMessage:(NSString *)message {
    [self configureDefaultMaskType];
    [SVProgressHUD showSuccessWithStatus:message];
}

+ (void)showErrorWithMessage:(NSString *)message {
    [self configureDefaultMaskType];
    [SVProgressHUD showErrorWithStatus:message];
}

+ (void)showError:(NSError *)error {
    [SVProgressHUD showErrorWithMessage:error.localizedDescription];
}

+ (void)showLoading {
    [SVProgressHUD show];
}

+ (void)hideLoading {
    [SVProgressHUD dismiss];
}

+ (void)configureDefaultMaskType {
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeClear];
}

@end
