//
//  AuthenticationRepositoryTests.m
//  EAMovieApp
//
//  Created by EastAgile42 on 8/16/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import "AuthenticationRepository.h"
#import "AppTestHelper.h"
#import "UserEntity.h"


SpecBegin(AuthenticationRepositoryTest)

__block NSString *userEmail;
__block NSString *userPassword;
__block NSError *authError;
__block UserEntity *authUser;

beforeAll(^{
    userEmail = @"dummy-user@gmail.com";
    userPassword = @"dummypassword";
    [Expecta setAsynchronousTestTimeout:10.0];
});

beforeEach(^{
    authError = nil;
    authUser = nil;
});

describe(@"Authentication handlers", ^{

    context(@"Register user", ^{
        
        beforeEach(^{
            [AuthenticationRepository signupWith:userEmail andPassword:userPassword completionHandler:^(UserEntity *user, NSError *error) {
                authError = error;
                authUser = user;
            }];
        });
        
        it(@"1.should return user data when registered a new user", ^{
            expect(authUser).willNot.beNil();
            expect(authError).will.beNil();
        });
        
        it(@"2.should return an error when re-registered an exisiting user", ^{
            expect(authError).willNot.beNil();
            expect(authUser).will.beNil();
        });
        
    });
    
});

afterAll(^{
    [AppTestHelper deleteCurrentTestAccount];
});

SpecEnd
