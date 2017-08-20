//
//  SCTabBarController.m
//  SocialProject
//
//  Created by WEIJIAN LI on 8/20/17.
//  Copyright © 2017 WEIJIAN LI. All rights reserved.
//

#import "SCTabBarController.h"

@interface SCTabBarController ()

@end

@implementation SCTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewControllers = [self ViewControllerArray];
    self.selectedIndex = 1; // which tab is the initial tab when open the app
    
}

- (NSArray<UIViewController *> *)ViewControllerArray {
    UIViewController *homeController = [self homeViewController];
    UIViewController *exploreController = [self exploreViewController];
    NSArray<UIViewController *> *arrayOfController = @[homeController, exploreController];
    return arrayOfController;
}

- (UIViewController *)homeViewController {
    UIViewController *homeController = [[UIViewController alloc] init];
    homeController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Home" image:[UIImage imageNamed:@"Event"] tag:0]; // tag???
    return homeController;
}

- (UIViewController *)exploreViewController {
    UIViewController *exploreController = [[UIViewController alloc] init];
    exploreController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Explore" image:[UIImage imageNamed:@"Explore"] tag:1];
    return exploreController;
}

@end
