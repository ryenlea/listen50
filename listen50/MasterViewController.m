//
//  MasterViewController.m
//  listen50
//
//  Created by Li Yuhang on 13-7-4.
//  Copyright (c) 2013年 Li Yuhang. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"

@interface MasterViewController ()

@end

@implementation MasterViewController
@synthesize detailCtr,lessons;

- (id)init{
    self = [super initWithStyle:UITableViewStylePlain];
    if(self){
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
