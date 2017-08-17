//
//  AppTestHelper.m
//  EAMovieApp
//
//  Created by EastAgile42 on 8/17/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import "AppTestHelper.h"

@implementation AppTestHelper

+ (void)deleteCurrentTestAccount {
    [AuthenticationRepository deleteCurrentUserAccountWithCompletionHandler:^(BOOL isSuccess) { }];
}

@end
