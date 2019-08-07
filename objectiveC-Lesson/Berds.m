//
//  Berds.m
//  objectiveC-Lesson
//
//  Created by admin on 01/08/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import "Berds.h"

@implementation Berds

- (instancetype)initWhithNumber:(NSNumber*) number
{
    self = [super init];
    if (self) {
        [number retain];
        [_number release];
        _number = number;
    }
    return self;
}

@end
