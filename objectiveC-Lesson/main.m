//
//  main.m
//  objectiveC-Lesson
//
//  Created by admin on 08/07/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

//метод сложения
void build () {
    
    int first = 0;
    int second = 0;
    float result = 0.0f;
    char action[40];
    
    printf("Введите первое число: ");
    scanf("%d", &first);
    printf("Введите операцию сложения ");
    scanf("%s", action);
    printf("Введите второе число: ");
    scanf("%d", &second);
    
    NSString *actionOperation = [NSString stringWithCString:action encoding:1];
    
    if ([actionOperation isEqualToString:@"+"]){
        result = first + second;
        NSLog(@"При сложение получилось число %f", result);
    } else {
        NSLog(@"Вы ввели неправильную операцию");
    }

}
//метод вычитания
void subtraction () {
    int first = 0;
    int second = 0;
    float result = 0.0f;
    char action[40];
    
    printf("Введите первое число: ");
    scanf("%d", &first);
    printf("Введите операцию вычитания ");
    scanf("%s", action);
    printf("Введите второе число: ");
    scanf("%d", &second);
    
    NSString* actionOperation = [NSString stringWithCString:action encoding:1];
    
    if ([actionOperation isEqualToString:@"-"]) {
        result = first - second;
        NSLog(@"При вычитание получилось число %f", result);
    } else {
        NSLog(@"Вы вели не правильную операцию");
    }
    
}

//метод умножения
void multiplication () {
    
    int first = 0;
    int second = 0;
    float result = 0.0f;
    char action[40];
    
    printf("Введите первое число: ");
    scanf("%d", &first);
    printf("Введите операцию умножения ");
    scanf("%s", action);
    printf("Введите второе число: ");
    scanf("%d", &second);
    
    NSString* actionOperation = [NSString stringWithCString:action encoding:1];
    
    if ([actionOperation isEqualToString:@"*"]) {
        result = first * second;
        NSLog(@"При умножение получилось число %f", result);
    } else {
        NSLog(@"Вы вели не правильную операцию");
    }
}
//метод деления
void division () {
    
    int first = 0;
    int second = 0;
    float result = 0.0f;
    char action[40];
    
    printf("Введите первое число: ");
    scanf("%d", &first);
    printf("Введите операцию деления ");
    scanf("%s", action);
    printf("Введите второе число: ");
    scanf("%d", &second);
    
    NSString* actionOperation = [NSString stringWithCString:action encoding:1];
    
    if ([actionOperation isEqualToString:@"/"]) {
        result = first / second;
        NSLog(@"При вычитание получилось число %f", result);
    } else {
        NSLog(@"Вы вели не правильную операцию");
    }
}

void alphabet () {
    
    char letter[40];
    NSArray* arrayLetters = [[NSArray alloc] initWithObjects:@"A", @"B", @"C", @"D", @"E", @"F", @"G", @"H", @"I", @"J", @"K", @"L", @"M", @"N", @"O", @"P", @"Q", @"R", @"S", @"T", @"U", @"V", @"W", @"X", @"Y", @"Z", @"a", @"b", @"c", @"d", @"e", @"F", @"f", @"h", @"i", @"j", @"k", @"l", @"m", @"n", @"o", @"p", @"q", @"r", @"s", @"t", @"u", @"v", @"w", @"x", @"y", @"z", nil];
    
    printf("Ввидите букву в Английском алфовите: ");
    scanf("%s", letter);
    NSString* letterUser = [NSString stringWithCString:&letter encoding:1];
    
    for (NSString* string in arrayLetters){
        if ([letterUser isEqualToString:string]) {
            NSLog(@"Такая буква-%@, есть в английском алфовите", letterUser);
        }
    }

}
// практическое задание на 3 урок от методички
//--------------------------------------------------------------------------------------

//1 задание
void autoMarka () {
    NSArray* marka = @[@"Audi", @"BMV", @"Mercedec", @"Kia", @"Nissan", @"Honda"];
    
    for (NSString* string in marka) {
        NSLog(@"Маркa автомобилий: %@\n", string);
    }
}
//2 задание
enum OperationCal {
    operationbuild,
    operationsubtraction,
    operationmultiplication,
    operationdivision
};
typedef enum OperationCal OperationCal;

float calculator(int a, OperationCal oper, int b ) {
    float result = 0.0f;
    
    switch (oper) {
        case operationbuild:
            return a + b;
            break;
        case operationdivision:
            return a / b;
            break;
        case operationsubtraction:
            return a - b;
            break;
        case operationmultiplication:
            return a * b;
            break;
        default:
            break;
    }
}

//3 задание
enum Body {
    standart,
    sport,
    fat
};
typedef enum Body Body;

struct Human {
    NSString *name;
    NSInteger age;
    Body body;
};
typedef struct Human Human;




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Student* student = [[Student alloc] initName:@"Adel" initSurnName:@"Muhametshin"];
        [student upYear];
        
        Student* student2 = [[Student alloc] initName:@"Artur" initSurnName:@"Ibragimovich"];
        [student2 upYear];
        [student2 upYear];
        
        Student* student3 = [[Student alloc] initName:@"Vitaly" initSurnName:@"Konshin"];

        NSArray* array = [[NSArray alloc] initWithObjects:student,student2,student3, nil];
        
        for (Student* student in array) {
            NSLog(@"%@ его возраст %i",student.fullName, student.age);
        }
        
    }
    return 0;
}
