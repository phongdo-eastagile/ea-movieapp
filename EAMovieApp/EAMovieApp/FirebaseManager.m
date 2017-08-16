//
//  FirebaseManager.m
//  EAMovieApp
//
//  Created by EastAgile42 on 8/16/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import "FirebaseManager.h"

@implementation FirebaseManager

+ (id)shared {
    static FirebaseManager* shared = nil;
    @synchronized (self) {
        if (!shared) {
            shared = [[FirebaseManager alloc] init];
        }
        return shared;
    }
}

+ (void)startService {
    [FIRApp configure];
}

@end
