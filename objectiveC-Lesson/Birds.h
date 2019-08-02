//
//  Birds.h
//  objectiveC-Lesson
//
//  Created by admin on 01/08/2019.
//  Copyright © 2019 admin. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface Birds : NSObject

- (instancetype)initWithBirds:(NSNumber*) number;

@property (strong, nonatomic) NSNumber* number;

@end

NS_ASSUME_NONNULL_END
