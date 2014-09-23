//
//  AppDelegate.m
//  ViewTest
//
//  Created by Neal Sidhwaney on 9/23/14.
//  Copyright (c) 2014 DotApp. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  self.window.backgroundColor = [UIColor whiteColor];
  [self.window makeKeyAndVisible];
  ViewController* vc = [[ViewController alloc] init];
  [self.window setRootViewController:vc];
  return YES;
}

@end
