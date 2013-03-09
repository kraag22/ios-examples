//
//  scViewController.m
//  zombies
//
//  Created by Martin Bartusek on 26.09.12.
//  Copyright (c) 2012 Martin Bartusek. All rights reserved.
//

#import "scViewController.h"
#import "scSecondViewController.h"
#import "scAppDelegate.h"
#import "scHolder.h"
#import "scZombie.h"

@interface scViewController ()

@end

@implementation scViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    scZombie *zomb = [[scZombie alloc] init];

    scHolder *holder = [[scHolder alloc] initWith:zomb];
    
    [holder.zombie speak];
    
    [self switchToSecond:holder];
}

- (void)switchToSecond:(scHolder *)holder {
    
    scAppDelegate *appDelegate = (scAppDelegate *)[UIApplication sharedApplication].delegate;
    scSecondViewController *controller = [[scSecondViewController alloc] initWith:holder];
    
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
