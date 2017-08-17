//
//  KIFUITestActor+Extension.m
//  EAMovieApp
//
//  Created by EastAgile42 on 8/17/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import "KIFUITestActor+Extension.h"

@implementation KIFUITestActor (Extension)

- (void)resetAppState {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"app.notification.reset-app-state" object:self];
    [self waitForTimeInterval:1.0];
}

@end
