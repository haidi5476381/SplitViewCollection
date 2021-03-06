//
//  AppDelegate.m
//  SplitViewCollection
//
//  Created by jakey on 14-2-21.
//  Copyright (c) 2014年 jakey. All rights reserved.
//

#import "AppDelegate.h"

#import "DetailViewController.h"
#import "MGSplitViewController.h"
#import "MasterViewController.h"

@implementation AppDelegate
@synthesize window, splitViewController, masterViewController, detailViewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.splitViewController = [[MGSplitViewController alloc] initWithNibName:@"MGSplitViewController" bundle:nil];
    self.splitViewController.delegate = self;

    self.window.rootViewController = self.splitViewController;
    [self.window makeKeyAndVisible];
 
    
    UICollectionViewFlowLayout *flowLayout=[[UICollectionViewFlowLayout alloc] init];
    flowLayout.itemSize=CGSizeMake(100,100);
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    
    
    self.splitViewController.masterViewController = [[MasterViewController alloc] initWithCollectionViewLayout:flowLayout];
    self.splitViewController.detailViewController = [[DetailViewController alloc] init];


    return YES;
}
- (float)splitViewController:(MGSplitViewController *)svc constrainSplitPosition:(float)proposedPosition splitViewSize:(CGSize)viewSize {
    return proposedPosition;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
