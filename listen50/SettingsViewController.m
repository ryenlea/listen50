//
//  SettingsViewController.m
//  listen50
//
//  Created by Li Yuhang on 13-7-7.
//  Copyright (c) 2013年 Li Yuhang. All rights reserved.
//

#import "SettingsViewController.h"
#import "UIBarButtonItem+NUI.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (id) init {
    self = [super initWithStyle:UITableViewStyleGrouped];
    if(!self) return nil;
    self.title = @"设置";
    return self;
}
- (void)viewWillAppear:(BOOL)animated
{
    UIBarButtonItem* item =[[UIBarButtonItem alloc] initWithTitle:@"关闭" style:UIBarButtonItemStyleBordered target:self action:@selector(close:)];
    [NUIBarButtonItemRenderer render:item withClass:@"BarButton"];
    self.navigationItem.rightBarButtonItem = item;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self addSection:^(JMStaticContentTableViewSection* section, NSUInteger sectionIndex){
        [section addCell:^(JMStaticContentTableViewCell *staticContentCell, UITableViewCell *cell, NSIndexPath *indexPath) {
			cell.textLabel.text = @"关于";
            UIView* bgColorView = [[UIView alloc] init];
            bgColorView.backgroundColor = [[UIColor alloc] initWithRed:180.0 green:59.0 blue:46.0 alpha:1.0];
            cell.selectedBackgroundView= bgColorView;
            cell.accessoryType = UITableViewCellAccessoryNone;
		} whenSelected:^(NSIndexPath *indexPath) {
			//TODO
		}];
    }];
    
    [self addSection:^(JMStaticContentTableViewSection* section, NSUInteger sectionIndex){
        [section addCell:^(JMStaticContentTableViewCell *staticContentCell, UITableViewCell *cell, NSIndexPath *indexPath) {
			cell.textLabel.text = @"意见反馈";
            UIView* bgColorView = [[UIView alloc] init];
            bgColorView.backgroundColor = [[UIColor alloc] initWithRed:180.0 green:59.0 blue:46.0 alpha:1.0];
            cell.selectedBackgroundView= bgColorView;
            cell.accessoryType = UITableViewCellAccessoryNone;
		} whenSelected:^(NSIndexPath *indexPath) {
			//TODO
		}];
        [section addCell:^(JMStaticContentTableViewCell *staticContentCell, UITableViewCell *cell, NSIndexPath *indexPath) {
			cell.textLabel.text = @"版权申诉";
            UIView* bgColorView = [[UIView alloc] init];
            bgColorView.backgroundColor = [[UIColor alloc] initWithRed:180.0 green:59.0 blue:46.0 alpha:1.0];
            cell.selectedBackgroundView= bgColorView;
            cell.accessoryType = UITableViewCellAccessoryNone;
		} whenSelected:^(NSIndexPath *indexPath) {
			//TODO
		}];
        [section addCell:^(JMStaticContentTableViewCell *staticContentCell, UITableViewCell *cell, NSIndexPath *indexPath) {
			cell.textLabel.text = @"给我评分";
            UIView* bgColorView = [[UIView alloc] init];
            bgColorView.backgroundColor = [[UIColor alloc] initWithRed:180.0 green:59.0 blue:46.0 alpha:1.0];
            cell.selectedBackgroundView= bgColorView;
            cell.accessoryType = UITableViewCellAccessoryNone;
		} whenSelected:^(NSIndexPath *indexPath) {
			//TODO
		}];
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) close:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}

@end
