//
//  Calculator.m
//  objectiveC-Lesson
//
//  Created by admin on 14/08/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

CalculatorBlock build1 = ^(int a, int b){
    return a + b;
};

CalculatorBlock division1 = ^(int a, int b){
    return a / b;
};

CalculatorBlock multiplication1 = ^(int a, int b){
    return a * b;
};

CalculatorBlock subtraction1 = ^(int a, int b){
    return a + b;
};


+ (int) beginWithAction:(Action) action firstNumber:(int) first secondNumber:(int) second{
    
    switch (action) {
        case Actionbuild:
            return build1(first, second);
        case Actiondivision:
            return division1(first, second);
        case Actionsubtraction:
            return subtraction1(first, second);
        case Actionmultiplication:
            return multiplication1(first, second);
            break;
    }
    
};

@end
