//
//  UserEntityTest.m
//  EAMovieApp
//
//  Created by EastAgile42 on 8/16/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import "UserEntity.h"

SpecBegin(UserEntityTest)

describe(@"User Entity", ^{
   
    it(@"should have correct information when created", ^{
        NSString *dummyIdentifier = @"12345";
        NSString *dummyEmail = @"dummy@gmail.com";
        UserEntity *userEntity = [[UserEntity alloc] init:dummyIdentifier email:dummyEmail];
        expect(userEntity.identifier == dummyIdentifier).to.beTruthy();
        expect(userEntity.email == dummyEmail).to.beTruthy();
    });
    
});

SpecEnd
