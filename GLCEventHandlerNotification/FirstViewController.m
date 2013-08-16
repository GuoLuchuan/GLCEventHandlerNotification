//
//  Test1ViewController.m
//  GLCEventHandlerNotification
//
//  Created by guo luchuan on 13-8-16.
//  Copyright (c) 2013年 yours. All rights reserved.
//

#import "FirstViewController.h"

#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)init
{
    self = [super init];
    if (self) {
        // Custom initialization
        
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
        button.backgroundColor = [UIColor grayColor];
        [button setTitle:@"Push" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(pushTestController) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
    return self;
}

- (void)pushTestController
{
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondViewController animated:YES];
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
