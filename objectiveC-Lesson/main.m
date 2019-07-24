//
//  main.m
//  objectiveC-Lesson
//
//  Created by admin on 08/07/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

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
        
        //1 задание
        autoMarka();
        //2 задание
        int a = calculator(2, operationmultiplication, 2);
        int b = calculator(10, operationdivision, 2);
        NSLog(@"Result: \n a = %i, \n b = %i", a, b);
        //3 задание
        Human human1;
        Human human2;
        Human human3;
        human1.name = @"Vasy";
        human1.age = 31;
        human2.name = @"Pety";
        human2.age = 22;
        human3.name = @"adel";
        human3.age = 34;
        
        NSLog(@"\n human1 name: %@, and age: %d, \n human2 name: %@ and age: %d, \n human3 name: %@ and age: %d" , human1.name, human1.age, human2.name, human2.age, human3.name, human3.age);
        

//        build();
//        subtraction ();
//        multiplication ();
//        division ();
//        alphabet ();

        
    }
    return 0;
}
