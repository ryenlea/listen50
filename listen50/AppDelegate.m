//
//  AppDelegate.m
//  listen50
//
//  Created by Li Yuhang on 13-7-4.
//  Copyright (c) 2013年 Li Yuhang. All rights reserved.
//

#import "AppDelegate.h"
#import "MasterViewController.h"
#import "DetailViewController.h"

@implementation AppDelegate
@synthesize splitCtr;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //
    UISplitViewController* splitViewController = [[UISplitViewController alloc] init];
    
    MasterViewController* masterCtr = [[MasterViewController alloc] init];
    DetailViewController* detailCtr = [[DetailViewController alloc] init];
    //
    UINavigationController* masterNavCtr = [[UINavigationController alloc] initWithRootViewController:masterCtr];
    UINavigationController* detailNavCtr = [[UINavigationController alloc] initWithRootViewController:detailCtr];
    
    self.window.rootViewController = splitViewController;
    masterCtr.detailCtr = detailCtr;
    NSIndexPath* indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [masterCtr.tableView selectRowAtIndexPath: indexPath animated:NO scrollPosition:UITableViewScrollPositionTop];
    [masterCtr displayLesson:LESSON_ONE];
    
    self.splitCtr = splitViewController;
    self.splitCtr.delegate = detailCtr;
    self.splitCtr.viewControllers = @[masterNavCtr, detailNavCtr];
    self.window.rootViewController = self.splitCtr;
    //
    [self.window makeKeyAndVisible];
    return YES;
}
@end
