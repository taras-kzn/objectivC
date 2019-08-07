//
//  FlockOfBirds.m
//  objectiveC-Lesson
//
//  Created by admin on 01/08/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import "FlockOfBirds.h"
#import "Birds.h"

@implementation FlockOfBirds

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"New flock of birds");
    }
    return self;
}

-(void) addFlockOfBirds:(NSArray*) birds {
    NSLog(@"");
    [birds retain];
    [_birds release];
    _birds = birds;
    for (Birds* array in birds) {
        NSLog(@"add bird (%@)",array.number);
    }
}
-(void) remove {
    for (Birds* array in _birds) {
        [array release];
    }
    [_birds release];
}

- (void)dealloc
{
    [self remove];
    NSLog(@"Dealloc flock in birds");
    [super dealloc];
}

@end
