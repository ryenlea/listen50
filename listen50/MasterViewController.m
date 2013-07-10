//
//  MasterViewController.m
//  listen50
//
//  Created by Li Yuhang on 13-7-4.
//  Copyright (c) 2013年 Li Yuhang. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "SettingsViewController.h"
#import "LessonCell.h"
#import "NUIRenderer.h"
#import "AppDelegate.h"
#import "UIBarButtonItem+NUI.h"

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

- (void)viewWillAppear:(BOOL)animated
{
    UINavigationController* nav = self.navigationController;
    nav.toolbarHidden = NO;
    [NUIToolbarRenderer render:nav.toolbar withClass:@"QANavigationBar"];
    //
    UIBarButtonItem* item = [[UIBarButtonItem alloc]initWithTitle:@"设置" style:UIBarButtonItemStyleBordered target:self action:@selector(popSettingsPage:)];
    //
    UIBarButtonItem *fixedButton  = [[UIBarButtonItem alloc] initWithBarButtonSystemItem: UIBarButtonSystemItemFlexibleSpace target: nil action: nil];
    [NUIBarButtonItemRenderer render:item withClass:@"BarButton"];
    self.toolbarItems = @[fixedButton, item];

}

- (void) popSettingsPage:(id)sender
{
    UINavigationController* settingNav = [[UINavigationController alloc] initWithRootViewController:[[SettingsViewController alloc] init]];
    settingNav.modalPresentationStyle = UIModalPresentationFormSheet;
    [self presentModalViewController:settingNav animated:YES];
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
    UIView* bgColorView = [[UIView alloc] init];
    bgColorView.backgroundColor = [[UIColor alloc] initWithRed:180.0 green:59.0 blue:46.0 alpha:1.0];
    cell.selectedBackgroundView= bgColorView;
    
    /*
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:CELL];
    if(cell == NULL){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CELL];
    }
    UIView* bgColorView = [[UIView alloc] init];
    bgColorView.backgroundColor = [[UIColor alloc] initWithRed:180.0 green:59.0 blue:46.0 alpha:1.0];
    cell.selectedBackgroundView= bgColorView;
    cell.textLabel.text = @"もしもし";
    */
    return cell;
}

#pragma mark delegate
- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 65.0;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [detailCtr displayQuestionPage: indexPath.row + 1];
    detailCtr.navigationItem.title  = [NSString stringWithFormat:@"%d", indexPath.row ];
}
@end
