//
//  Birds.m
//  objectiveC-Lesson
//
//  Created by admin on 01/08/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import "Birds.h"

@implementation Birds

- (instancetype)initWithBirds:(NSNumber*) number
{
    self = [super init];
    if (self) {
        [number retain];
        [_number release];
        _number = number;
        NSLog(@"New bird %@", number);
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"Dealloc Bird - %@", _number);
    [_number release];
    [super dealloc];
}

@end
