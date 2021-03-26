//
//  RNCAppDelegate.m
//  ReactNativeCore
//
//  Created by Liam Xu on 03/26/2021.
//  Copyright (c) 2021 Liam Xu. All rights reserved.
//

#import "RNCAppDelegate.h"
#import <RCTRootView.h>

@implementation RNCAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    RCTRootView *rootView = [[RCTRootView alloc]
                             initWithBundleURL:[[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"]
                             moduleName:@"AwesomeProject"
                             initialProperties:@{}
                             launchOptions:launchOptions];
    
    rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    UIViewController *rootViewController = [UIViewController new];
    rootViewController.view = rootView;
    self.window.rootViewController = rootViewController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
