//
//  scHolder.m
//  zombies
//
//  Created by Martin Bartusek on 26.09.12.
//  Copyright (c) 2012 Martin Bartusek. All rights reserved.
//

#import "scHolder.h"
#import "scZombie.h"

@implementation scHolder

@synthesize zombie;

- (id)initWith:(scZombie *)zomb {
    self = [super init];
    
    self.zombie = zomb;
    
    return self;
}

- (void)speak {
    [self.zombie speak];
}

@end
