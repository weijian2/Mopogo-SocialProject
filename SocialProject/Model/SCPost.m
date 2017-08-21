//
//  SCPost.m
//  SocialProject
//
//  Created by WEIJIAN LI on 8/19/17.
//  Copyright © 2017 WEIJIAN LI. All rights reserved.
//

#import "SCPost.h"
#import <MapKit/MapKit.h>

@implementation SCPost
// initWithDictionary is our customized init method(similar to Java Constructor)
- (instancetype) initWithDictionary:(NSDictionary *)dictionary {
    if (self = [super init]) { // super is parent(NSObject) of SCPost
        self.name = dictionary[@"name"];
        self.message = dictionary[@"message"];
        self.location = dictionary[@"location"];
        self.postDate = dictionary[@"postDate"];
        // [self setPostDate:dictionary[@"postDate"]];
    }
    return self;
}

@end
