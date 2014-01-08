//
//  ViewController.m
//  DelegateImplement
//
//  Created by Shuvo on 1/7/14.
//  Copyright (c) 2014 Masud Shuvo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(80, 240, 200, 30)];
    label.text = @"Class A";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];

    
    self.aClass = [[AnotherClass alloc] init];
    self.aClass.delegate = self;
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didInitiated:(AnotherClass *)aClass
{
    label.text = [NSString stringWithFormat:@"%@",aClass];
}

- (void)didFired
{
    label.text = @"Do something called";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
