//
//  SCLocationManager.h
//  SocialProject
//
//  Created by WEIJIAN LI on 8/24/17.
//  Copyright © 2017 WEIJIAN LI. All rights reserved.
//



#import <Foundation/Foundation.h>
@class CLLocation;

extern NSString * const SCLocationUpdateNotification;

@interface SCLocationManager : NSObject

+ (instancetype)sharedManager;
- (void)getUserPermission;
+ (BOOL)isLocationServicesEnabled;
- (void)startLoadUserLocation;
- (void)stopLoadUserLocation;
- (CLLocation *)getUserCurrentLocation;

@end
