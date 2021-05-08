//
//  RNCAppDelegate.m
//  ReactNativeCore
//
//  Created by Liam Xu on 03/26/2021.
//  Copyright (c) 2021 Liam Xu. All rights reserved.
//

#import "RNCAppDelegate.h"

@interface RNCAppDelegate () <RCTBridgeDelegate>

@property (nonatomic, strong) UMModuleRegistryAdapter *moduleRegistryAdapter;

@end

@implementation RNCAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.moduleRegistryAdapter = [[UMModuleRegistryAdapter alloc] initWithModuleRegistryProvider:[[UMModuleRegistryProvider alloc] init]];
    RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:launchOptions];
    RCTRootView *rootView = [[RCTRootView alloc]
                             initWithBridge:bridge
                             moduleName:@"main"
                             initialProperties:nil];
    rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];
    UIViewController *rootViewController = [UIViewController new];
    rootViewController.view = rootView;
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = rootViewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (NSArray<id<RCTBridgeModule>> *)extraModulesForBridge:(RCTBridge *)bridge {
    NSArray<id<RCTBridgeModule>> *extraModules = [_moduleRegistryAdapter extraModulesForBridge:bridge];
    // If you'd like to export some custom RCTBridgeModules that are not Expo modules, add them here!
    return extraModules;
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge {
    return [NSURL URLWithString:[[[[NSBundle mainBundle] URLForResource:@"Expo" withExtension:@"bundle"] relativePath] stringByAppendingPathComponent:@"41.0.1/main.jsbundle"]];
}


@end
