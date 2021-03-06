//
//  AppDelegate.m
//  SocialProject
//
//  Created by WEIJIAN LI on 8/19/17.
//  Copyright © 2017 WEIJIAN LI. All rights reserved.
//

#import "AppDelegate.h"
#import "SCTabBarController.h"
#import "SCLocationManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

// AppDelegate is the center controller of an app
// didFinishLaunchingWithOptions: when an app is not in app background and be openned will trigger this function
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    // initialize window, bounds is similar to FrontEnd's box model
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    SCTabBarController *tabBarController = [[SCTabBarController alloc] init];
    self.window.rootViewController = tabBarController;
    // make this window key window and move to toppest so that you can see. call makeKeyAndVisible to show the main window and also make it key
    [self.window makeKeyAndVisible];
    // when app is launched, update location
    [self updateLocation];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}

// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
// when app enter background, stop use location service
- (void)applicationDidEnterBackground:(UIApplication *)application {
    [[SCLocationManager sharedManager] stopLoadUserLocation];
}

// Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
- (void)applicationWillEnterForeground:(UIApplication *)application {
    [self updateLocation];
}

- (void)updateLocation {
    if ([SCLocationManager isLocationServicesEnabled]) {
        SCLocationManager *locationManager  = [SCLocationManager sharedManager];
        [locationManager startLoadUserLocation];
    }
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
