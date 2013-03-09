//
//  scSecondViewController.h
//  zombies
//
//  Created by Martin Bartusek on 26.09.12.
//  Copyright (c) 2012 Martin Bartusek. All rights reserved.
//

#import <UIKit/UIKit.h>

@class scHolder;

@interface scSecondViewController : UIViewController

@property (strong, nonatomic) scHolder *holder;

- (id)initWith:(scHolder *)hold;

@end
