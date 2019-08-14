//
//  Calculator.h
//  objectiveC-Lesson
//
//  Created by admin on 14/08/2019.
//  Copyright © 2019 admin. All rights reserved.
//

@import Foundation;

typedef int (^CalculatorBlock) (int, int);

typedef enum Action {
    Actionbuild,
    Actiondivision,
    Actionsubtraction,
    Actionmultiplication
} Action;

@interface Calculator : NSObject

+ (int) beginWithAction:(Action) action firstNumber:(int) first secondNumber:(int) second;

@end

