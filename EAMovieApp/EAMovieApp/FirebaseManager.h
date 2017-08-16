//
//  FirebaseManager.h
//  EAMovieApp
//
//  Created by EastAgile42 on 8/16/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Firebase/Firebase.h>

@interface FirebaseManager : NSObject

+ (id)shared;
+ (void)startService;

@end
