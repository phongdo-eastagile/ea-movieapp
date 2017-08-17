//
//  AppDelegate.m
//  EAMovieApp
//
//  Created by EastAgile42 on 8/15/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

- (void)addListenerToResetAppState;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self addListenerToResetAppState];
    [FirebaseManager startService];
    return YES;
}

#pragma mark - Reset App State (for UITests with KIF)

- (void)addListenerToResetAppState {
    #ifdef DEBUG
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(resetAppState:) name:@"app.notification.reset-app-state" object:nil];
    #endif
}

- (void)resetAppState:(NSNotification*)notification {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *controller = [storyboard instantiateInitialViewController];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = controller;
    [self.window makeKeyAndVisible];
}

@end
