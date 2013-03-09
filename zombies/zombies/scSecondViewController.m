//
//  scSecondViewController.m
//  zombies
//
//  Created by Martin Bartusek on 26.09.12.
//  Copyright (c) 2012 Martin Bartusek. All rights reserved.
//

#import "scSecondViewController.h"
#import "scHolder.h"
#import "scViewController.h"
#import "scAppDelegate.h"

@interface scSecondViewController ()

@end

@implementation scSecondViewController

- (id)initWith:(scHolder *)hold
{
    self = [super init];
    
    if (self) {
        self.holder = hold;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSLog(@"I'm running");
    
    [self.holder performSelector:@selector(speak) withObject:nil afterDelay:2];

    //[self performSelector:@selector(switchToFirst) withObject:nil afterDelay:1];
    
}

- (void)viewDidAppear:(BOOL)animated {
    //[self switchToFirst];
}

- (void)switchToFirst {
    
    scAppDelegate *appDelegate = (scAppDelegate *)[UIApplication sharedApplication].delegate;
    scViewController *controller = [[scViewController alloc] init];
    
    appDelegate.window.rootViewController = controller;
    [appDelegate.window addSubview:[controller view]];
    [appDelegate.window makeKeyAndVisible];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
