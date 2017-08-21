//
//  SCTabBarController.m
//  SocialProject
//
//  Created by WEIJIAN LI on 8/20/17.
//  Copyright © 2017 WEIJIAN LI. All rights reserved.
//

#import "SCTabBarController.h"
#import "SCHomeViewController.h"
@interface SCTabBarController ()

@end

@implementation SCTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewControllers = [self ViewControllerArray];
    self.selectedIndex = 1; // which tab is the initial tab when open the app
    
}

- (NSArray<UIViewController *> *)ViewControllerArray {
    UIViewController *homeController = [self homeNavigationViewController];
    UIViewController *exploreController = [self exploreNavigationViewController];
    NSArray<UIViewController *> *arrayOfController = @[homeController, exploreController];
    return arrayOfController;
}

//- (UIViewController *)homeViewController {
//    SCHomeViewController *homeController = [[SCHomeViewController alloc] init];
////    // set background to white
////    homeController.view.backgroundColor = [UIColor whiteColor];
//    homeController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Home" image:[UIImage imageNamed:@"Events"] tag:0];
//    return homeController;
//}
//
//- (UIViewController *)exploreViewController {
//    UIViewController *exploreController = [[UIViewController alloc] init];
//    exploreController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Explore" image:[UIImage imageNamed:@"Explore"] tag:1];
//    return exploreController;
//}

- (UIViewController *)homeNavigationViewController {
    SCHomeViewController *homeViewController = [[SCHomeViewController alloc] initWithNibName:NSStringFromClass([SCHomeViewController class]) bundle:nil];
    homeViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Home", nil) image:[UIImage imageNamed:@"Events"] selectedImage:[UIImage imageNamed:@"Events_selected"]];
    homeViewController.tabBarItem.tag = 0;
    // add navigationBar
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:homeViewController];
    return navigationController;
}

- (UIViewController *)exploreNavigationViewController {
    UIViewController *exploreController = [[UIViewController alloc] init];
    exploreController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Explore" image:[UIImage imageNamed:@"Explore"] selectedImage:[UIImage imageNamed:@"Explore_selected"]];
    exploreController.tabBarItem.tag = 1;
    // add navigationBar
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:exploreController];
    return navigationController;
}


@end
