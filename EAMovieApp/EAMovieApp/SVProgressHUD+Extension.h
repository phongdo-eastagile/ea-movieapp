//
//  SVProgressHUD+Extension.h
//  EAMovieApp
//
//  Created by EastAgile42 on 8/16/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import <SVProgressHUD/SVProgressHUD.h>

@interface SVProgressHUD (Extension)

+ (void)showSuccessWithMessage:(NSString*)message;
+ (void)showErrorWithMessage:(NSString*)message;
+ (void)showError:(NSError*)error;
+ (void)showLoading;
+ (void)hideLoading;

@end
