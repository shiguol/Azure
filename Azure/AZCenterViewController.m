//
//  AZCenterViewController.m
//  Azure
//
//  Created by Alex on 13-10-16.
//  Copyright (c) 2013年 Non Inc. All rights reserved.
//

#import <AzureModel/AZTwitterRequest.h>
#import "AZCenterViewController.h"

@interface AZCenterViewController ()

@property (nonatomic, strong) UIButton *testButton;
@property (nonatomic, strong) UITextView *logView;
@end

@implementation AZCenterViewController
@synthesize testButton = testButton_;
@synthesize logView = logView_;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
    self.testButton = [[UIButton alloc] initWithFrame:CGRectMake(20, 40, 64, 38)];
    self.testButton.backgroundColor = [UIColor blueColor];
    [self.testButton setTitle:@"测试" forState:UIControlStateNormal];
    [self.testButton setTintColor:[UIColor blackColor]];
    [self.testButton addTarget:self action:@selector(handleTestButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.testButton];
    
    self.logView = [[UITextView alloc] initWithFrame:CGRectMake(20, 80, 280, 240)];
    self.logView.editable = NO;
    [self.view addSubview:self.logView];
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

#pragma mark - 事件处理
- (void)handleTestButton
{
  AZTwitterRequest *req = [[AZTwitterRequest alloc] init];
  [req requestTwitterPublic:^(NSDictionary *response) {
    self.logView.text = @"";
    [self.logView setText:[response description]];
  }];
}

@end
