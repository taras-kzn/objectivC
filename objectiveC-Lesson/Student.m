//
//  Student.m
//  objectiveC-Lesson
//
//  Created by admin on 31/07/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import "Student.h"

@implementation Student

- (instancetype)initName:(NSString*) name initSurnName:(NSString*) surnName
{
    self = [super init];
    if (self) {
        self.name = name;
        self.surnName = surnName;
        _age = 30;
    }
    return self;
}

//-(NSInteger*) age{
//    return 30;
//}

-(NSString*) fullName{
    NSString* result = [NSString stringWithFormat: @"%@ " @"%@", self.surnName, self.name];
    return result;
}

-(void)upYear{
    NSInteger i = 1;
    _age += i;
}

@end
