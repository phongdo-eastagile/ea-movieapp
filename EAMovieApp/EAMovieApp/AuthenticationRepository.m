//
//  AuthenticationRepository.m
//  EAMovieApp
//
//  Created by EastAgile42 on 8/16/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import "AuthenticationRepository.h"

@implementation AuthenticationRepository

+ (void)signupWith:(NSString *)email andPassword:(NSString *)password completionHandler:(void (^)(UserEntity *user, NSError *error))handler {
    [[FIRAuth auth] createUserWithEmail:email password:password completion:^(FIRUser *user, NSError *error) {
        UserEntity *localUser;
        if (user) {
            NSString *userID = user.uid;
            NSString *userEmail = user.email;
            localUser = [[UserEntity alloc] init:userID email:userEmail];
        }
        handler(localUser, error);
    }];
}

+ (void)deleteCurrentUserAccountWithCompletionHandler:(void (^)(BOOL isSuccess))handler {
    FIRUser *currentUser = [FIRAuth auth].currentUser;
    [currentUser deleteWithCompletion:^(NSError* error) {
        if (error) {
            handler(NO);
        } else {
            handler(YES);
        }
    }];
}

@end
