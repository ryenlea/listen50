//
//  SettingsViewController.m
//  listen50
//
//  Created by Li Yuhang on 13-7-7.
//  Copyright (c) 2013年 Li Yuhang. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (id) init {
    self = [super initWithStyle:UITableViewStyleGrouped];
    if(!self) return nil;
    self.title = @"设置";
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self addSection:^(JMStaticContentTableViewSection* section, NSUInteger sectionIndex){
        [section addCell:^(JMStaticContentTableViewCell* staticContentCell,UITableViewCell* cell, NSIndexPath* indexPath){
            staticContentCell.reuseIdentifier =@"UIControlCell";
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            
            cell.textLabel.text = @"测试";
        }];
    }];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
