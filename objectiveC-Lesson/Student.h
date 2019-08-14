//
//  Student.h
//  objectiveC-Lesson
//
//  Created by admin on 31/07/2019.
//  Copyright © 2019 admin. All rights reserved.
//

@import Foundation;

@interface Student : NSObject

@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* surnName;
@property (strong, nonatomic) NSString* fullName;
@property (readonly) NSInteger age;

- (instancetype)initName:(NSString*) name initSurnName:(NSString*) surnName;

-(void)upYear;

@end


