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
    [SVProgressHUD showSuccessWithStatus:message];
}

+ (void)showErrorWithMessage:(NSString *)message {
    [SVProgressHUD showErrorWithStatus:message];
}

+ (void)showError:(NSError *)error {
    [SVProgressHUD showErrorWithStatus:error.localizedDescription];
}

+ (void)showLoading {
    [SVProgressHUD showLoading];
}

+ (void)hideLoading {
    [SVProgressHUD hideLoading];
}

@end
