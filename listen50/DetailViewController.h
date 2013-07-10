//
//  DetailViewController.h
//  listen50
//
//  Created by Li Yuhang on 13-7-4.
//  Copyright (c) 2013年 Li Yuhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController<UISplitViewControllerDelegate,UIWebViewDelegate>

@property (nonatomic,strong) UIWebView* webView;
@property (nonatomic,strong) UINavigationController* navCtr;
@property (nonatomic) NSInteger contentType;

-(void) displayContent: (NSInteger) lessonNo withPageType:(NSInteger) contentType;

@end
