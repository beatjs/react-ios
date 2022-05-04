#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "RCTConvert+UIPageViewControllerNavigationOrientation.h"
#import "RCTConvert+UIPageViewControllerTransitionStyle.h"
#import "RCTOnPageScrollEvent.h"
#import "RCTOnPageScrollStateChanged.h"
#import "RCTOnPageSelected.h"
#import "ReactNativePageView.h"
#import "ReactViewPagerManager.h"
#import "UIViewController+CreateExtension.h"

FOUNDATION_EXPORT double react_native_pager_viewVersionNumber;
FOUNDATION_EXPORT const unsigned char react_native_pager_viewVersionString[];

