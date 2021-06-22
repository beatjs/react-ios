//
//  RNCAppDelegate.h
//  ReactNativeCore
//
//  Created by Liam Xu on 03/26/2021.
//  Copyright (c) 2021 Liam Xu. All rights reserved.
//

@import UIKit;
@import React;
#if __has_include(<UMModuleRegistryAdapter.h>)
@import Expo;
#endif

@interface RNCAppDelegate : UIResponder <UIApplicationDelegate, RCTBridgeDelegate>

@property (strong, nonatomic) UIWindow *window;

@end
