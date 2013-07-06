//
//  MasterViewController.m
//  listen50
//
//  Created by Li Yuhang on 13-7-4.
//  Copyright (c) 2013年 Li Yuhang. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "LessonCell.h"

@interface MasterViewController ()

@end

@implementation MasterViewController
@synthesize detailCtr,lessons;

- (id)init{
    self = [super initWithStyle:UITableViewStylePlain];
    if(self){
        self.navigationItem.title = @"目录";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.delegate  = self;
    self.tableView.dataSource  = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark datasource
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 50;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* CELL = @"Cell";
    static BOOL nibsRegistered =NO;
    if(!nibsRegistered){
        UINib* nib = [UINib nibWithNibName:@"LessonCell" bundle:nil];
        [tableView registerNib:nib forCellReuseIdentifier:CELL];
        nibsRegistered = YES;
    }
    
    LessonCell* cell = [tableView dequeueReusableCellWithIdentifier:CELL];
    
    NSUInteger row = indexPath.row;
    return cell;
}

#pragma mark delegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 75.0;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [detailCtr displayQuestionPage: indexPath.row + 1];
    detailCtr.navigationItem.title  = [NSString stringWithFormat:@"%d", indexPath.row ];
}
@end
