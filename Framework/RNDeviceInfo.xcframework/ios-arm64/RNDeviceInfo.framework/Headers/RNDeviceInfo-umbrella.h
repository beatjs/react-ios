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

#import "DeviceUID.h"
#import "EnvironmentUtil.h"
#import "RNDeviceInfo.h"

FOUNDATION_EXPORT double RNDeviceInfoVersionNumber;
FOUNDATION_EXPORT const unsigned char RNDeviceInfoVersionString[];

