//
//  SCHomeTableViewCell.h
//  SocialProject
//
//  Created by WEIJIAN LI on 8/21/17.
//  Copyright © 2017 WEIJIAN LI. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SCPost;
@interface SCHomeTableViewCell : UITableViewCell
- (void)loadCellWithPost:(SCPost *)post;
+ (CGFloat)cellHeight;

@end
