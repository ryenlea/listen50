//
//  DetailViewController.m
//  listen50
//
//  Created by Li Yuhang on 13-7-4.
//  Copyright (c) 2013年 Li Yuhang. All rights reserved.
//

#import "DetailViewController.h"
#import "UISegmentedControl+NUI.h"

@interface DetailViewController ()
@property (strong,nonatomic) UIPopoverController* masterPopoverCtr;
@end

@implementation DetailViewController
@synthesize webView,masterPopoverCtr,navCtr,contentType,lessonId;

- (id)init{
    self = [super init];
    if(self){
        webView = [[UIWebView alloc] initWithFrame: [UIScreen mainScreen].applicationFrame];
        webView.delegate =self;
        webView.scrollView.bounces = NO;
        self.view = webView;
        contentType = CONTENT_QUESTION;
    }
    return self;
}
- (void)viewWillAppear:(BOOL)animated
{
    UINavigationController* nav = self.navigationController;
    nav.toolbarHidden = NO;
    UISegmentedControl* sc = [[UISegmentedControl alloc] initWithItems:@[@"题 目",@"原 文"]];
    sc.frame = CGRectMake(0, 0, 200, 30);
    [sc setWidth:100.0 forSegmentAtIndex:0];
    [sc setWidth:100.0 forSegmentAtIndex:1];
    sc.nuiClass = @"QASegmentedControl";
    sc.selectedSegmentIndex = CONTENT_QUESTION == contentType ? 0 : 1;
    [sc addTarget:self action:@selector(segmentedControlChanged:) forControlEvents:UIControlEventValueChanged];
    //
    UIBarButtonItem* item = [[UIBarButtonItem alloc]initWithCustomView:sc];
    //
    [NUIToolbarRenderer render:nav.toolbar withClass:@"QANavigationBar"];
    UIBarButtonItem *fixedButton  = [[UIBarButtonItem alloc] initWithBarButtonSystemItem: UIBarButtonSystemItemFlexibleSpace target: nil action: nil];
    self.toolbarItems = @[fixedButton, item, fixedButton];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) displayContent:(NSInteger)lessonNo withPageType:(NSInteger)conType
{
    contentType = conType;
    NSString* fileName =  [NSString stringWithFormat: CONTENT_QUESTION == contentType ? @"%dq" : @"%da",lessonNo];
    NSString* htmlPath = [[NSBundle mainBundle] pathForResource: fileName ofType:@"html" inDirectory:@"assets/htmls"];
    NSURL* htmlUrl = [NSURL fileURLWithPath:htmlPath];
    [webView loadRequest: [NSURLRequest requestWithURL:htmlUrl]];
}
#pragma mark custom
- (void) segmentedControlChanged:(id)sender
{
    switch ([sender selectedSegmentIndex]) {
        case 1:
            [self displayContent:lessonId withPageType:CONTENT_TEXT];
            break;
        case 0:
        default:
            [self displayContent:lessonId withPageType:CONTENT_QUESTION];
    }
}

#pragma mark split view
-(void) splitViewController:(UISplitViewController *)svc willHideViewController:(UIViewController *)aViewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)pc
{
    barButtonItem.title = @"目录";
    [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
    self.masterPopoverCtr = pc;
}

-(void) splitViewController:(UISplitViewController *)svc willShowViewController:(UIViewController *)aViewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
    self.masterPopoverCtr = NULL;
}

@end
