//
//  LessonCell.m
//  listen50
//
//  Created by Li Yuhang on 13-7-5.
//  Copyright (c) 2013年 Li Yuhang. All rights reserved.
//

#import "LessonCell.h"

@implementation LessonCell
@synthesize lessonNo,lessonTitle;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
