//
//  UserEntity.m
//  EAMovieApp
//
//  Created by EastAgile42 on 8/16/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import "UserEntity.h"

@interface UserEntity ()

@property (nonatomic, readwrite) NSString* identifier;
@property (nonatomic, readwrite) NSString* email;

@end

@implementation UserEntity

- (id)init:(NSString *)identifier email:(NSString *)email {
    self = [super init];
    if (self) {
        self.identifier = identifier;
        self.email = email;
    }
    return self;
}

@end
