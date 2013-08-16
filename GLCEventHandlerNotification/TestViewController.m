//
//  TestViewController.m
//  GLCEventHandlerNotification
//
//  Created by guo luchuan on 13-8-16.
//  Copyright (c) 2013年 yours. All rights reserved.
//

#import "TestViewController.h"

#import "TestJob.h"

@interface TestViewController ()
{
    TestJob *_testJob;
}

@end

@implementation TestViewController

- (void)dealloc
{
    [_testJob removeObserverForFinish:self];
    [_testJob removeObserverForStart:self];
}

- (id)init
{
    self = [super init];
    if (self) {
        // Custom initialization
        _testJob = [[TestJob alloc] init];
        [_testJob addObserver:self startHandler:^{
            NSLog(@"JOB START !!!");
        }];
        [_testJob addObserver:self startHandler:^{
            NSLog(@"JOB FINISH !!!");
        }];
    }
    return self;
}

- (void)viewDidAppear:(BOOL)animated
{
    [_testJob testStart];
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
