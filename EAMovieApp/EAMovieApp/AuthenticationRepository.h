//
//  AuthenticationRepository.h
//  EAMovieApp
//
//  Created by EastAgile42 on 8/16/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Firebase/Firebase.h>
#import "UserEntity.h"

@interface AuthenticationRepository : NSObject

+ (void)signupWith:(NSString*)email andPassword:(NSString*)password completionHandler:(void (^)(UserEntity *user, NSError *error))handler;
+ (void)deleteCurrentUserAccountWithCompletionHandler:(void (^)(BOOL isSuccess))handler;

@end
