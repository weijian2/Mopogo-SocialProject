//
//  SCPost.h
//  SocialProject
//
//  Created by WEIJIAN LI on 8/19/17.
//  Copyright © 2017 WEIJIAN LI. All rights reserved.
//

#import <Foundation/Foundation.h> // why import this? because NSObject is in Foundation and since Foundation has no dependency, we can safely import it in .h file

@class CLLocation; // tell compiler don't worry, CLLocation class must exist in runtime
@interface SCPost : NSObject

@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *message;
@property (nonatomic, strong) NSDate *postDate;
@property (nonatomic, strong) CLLocation *location;

- (instancetype) initWithDictionary:(NSDictionary *)dict;

@end
