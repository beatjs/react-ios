//
//  RNCAppDelegate.m
//  ReactNativeCore
//
//  Created by Liam Xu on 03/26/2021.
//  Copyright (c) 2021 Liam Xu. All rights reserved.
//

#import "RNCAppDelegate.h"

@interface RNCAppDelegate ()
#if __has_include(<UMModuleRegistryAdapter.h>)
@property (nonatomic, strong) UMModuleRegistryAdapter *moduleRegistryAdapter;
#endif
@end

@implementation RNCAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
#if __has_include(<UMModuleRegistryAdapter.h>)
    self.moduleRegistryAdapter = [[UMModuleRegistryAdapter alloc] initWithModuleRegistryProvider:[[UMModuleRegistryProvider alloc] init]];
#endif
    
    RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:launchOptions];
#if __has_include(<UMModuleRegistryAdapter.h>)
    RCTRootView *rootView = [[RCTRootView alloc]
                             initWithBridge:bridge
                             moduleName:@"main"
                             initialProperties:nil];
#else
    RCTRootView *rootView = [[RCTRootView alloc] initWithBridge:bridge
                                                     moduleName:@"AwesomeProject"
                                              initialProperties:nil];
#endif
    rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];
    UIViewController *rootViewController = [UIViewController new];
    rootViewController.view = rootView;
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = rootViewController;
    [self.window makeKeyAndVisible];
    return YES;
}

#if __has_include(<UMModuleRegistryAdapter.h>)
- (NSArray<id<RCTBridgeModule>> *)extraModulesForBridge:(RCTBridge *)bridge {
    NSArray<id<RCTBridgeModule>> *extraModules = [_moduleRegistryAdapter extraModulesForBridge:bridge];
    // If you'd like to export some custom RCTBridgeModules that are not Expo modules, add them here!
    return extraModules;
}
#endif

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge {
#if __has_include(<UMModuleRegistryAdapter.h>)
    return [NSURL URLWithString:[[[[NSBundle mainBundle] URLForResource:@"ExpoProject" withExtension:@"bundle"] relativePath] stringByAppendingPathComponent:@"41.0.1/main.jsbundle"]];
#else
    return [NSURL URLWithString:[[[[NSBundle mainBundle] URLForResource:@"AwesomeProject" withExtension:@"bundle"] relativePath] stringByAppendingPathComponent:@"0.63.4/main.jsbundle"]];
#endif
}


@end
