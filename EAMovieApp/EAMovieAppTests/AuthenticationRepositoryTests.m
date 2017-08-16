//
//  AuthenticationRepositoryTests.m
//  EAMovieApp
//
//  Created by EastAgile42 on 8/16/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import "AuthenticationRepository.h"


SpecBegin(AuthenticationRepositoryTest)

describe(@"Authentication handlers", ^{
    
    __block NSString *userEmail;
    __block NSString *userPassword;
    
    beforeAll(^{
        userEmail = @"dummy-user@gmail.com";
        userPassword = @"dummypassword";
    });
    
    describe(@"SignUp handler", ^{
       
        context(@"register new user", ^{
        
            
        });
        
    });
    
});

SpecEnd
