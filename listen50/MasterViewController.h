//
//  MasterViewController.h
//  listen50
//
//  Created by Li Yuhang on 13-7-4.
//  Copyright (c) 2013年 Li Yuhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;
@interface MasterViewController : UITableViewController

@property (strong,nonatomic) DetailViewController* detailCtr;
@property (strong,nonatomic) NSArray* lessons;
@end
