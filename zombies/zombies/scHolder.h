//
//  scHolder.h
//  zombies
//
//  Created by Martin Bartusek on 26.09.12.
//  Copyright (c) 2012 Martin Bartusek. All rights reserved.
//

#import <Foundation/Foundation.h>

@class scZombie;

@interface scHolder : NSObject

@property (assign, nonatomic) scZombie *zombie;

- (id)initWith:(scZombie *)zomb;
- (void)speak;
@end
