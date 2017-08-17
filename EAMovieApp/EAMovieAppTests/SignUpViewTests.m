//
//  SignUpViewTests.m
//  EAMovieApp
//
//  Created by EastAgile42 on 8/16/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

SpecBegin(SignUpViewTests)

__block NSString* userEmail;
__block NSString* userPassword;

beforeAll(^{
    userEmail = @"user@gmail.com";
    userPassword = @"123456789";
});

describe(@"SignUp View", ^{
   
    beforeEach(^{
        
    });
    
    it(@"should show loading indicator when pressed signUp button", ^{
        
    });
    
});

SpecEnd
