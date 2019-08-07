//
//  FlockOfBirds.h
//  objectiveC-Lesson
//
//  Created by admin on 01/08/2019.
//  Copyright © 2019 admin. All rights reserved.
//

@import Foundation;

@class Birds;

NS_ASSUME_NONNULL_BEGIN

@interface FlockOfBirds : NSObject

@property (strong, nonatomic) NSArray* birds;

-(void) addFlockOfBirds:(NSArray*) birds;


@end

NS_ASSUME_NONNULL_END
