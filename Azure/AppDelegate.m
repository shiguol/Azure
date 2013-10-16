//
//  AppDelegate.m
//  Azure
//
//  Created by Alex on 13-10-16.
//  Copyright (c) 2013年 Non Inc. All rights reserved.
//

#import "AppDelegate.h"

#import <MMDrawerController/MMDrawerController.h>
#import <MMDrawerController/MMDrawerController+Subclass.h>

#import "AZCenterViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  self.window.backgroundColor = [UIColor whiteColor];
  
  UIViewController * leftDrawer = [[UIViewController alloc] init];
  leftDrawer.view.backgroundColor = [UIColor redColor];
  AZCenterViewController *center = [[AZCenterViewController alloc] init];
  center.view.backgroundColor = [UIColor whiteColor];
  UIViewController * rightDrawer = [[UIViewController alloc] init];
  rightDrawer.view.backgroundColor = [UIColor yellowColor];
  
  MMDrawerController * drawerController = [[MMDrawerController alloc]
                                           initWithCenterViewController:center
                                           leftDrawerViewController:leftDrawer
                                           rightDrawerViewController:rightDrawer];
  [drawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
  [drawerController setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
  
  self.window.rootViewController = drawerController;
  
  [self.window makeKeyAndVisible];
  return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{

}

@end
