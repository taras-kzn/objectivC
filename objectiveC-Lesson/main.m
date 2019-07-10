//
//  main.m
//  objectiveC-Lesson
//
//  Created by admin on 08/07/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int first = 0;
        int second = 0;
        
        printf("ввидите первое число");
        scanf("%d", &first);
        printf("ввидите второе число");
        scanf("%d", &second);
        
        NSLog(@"при сложение получается число - %d, при вычитание получилось число - %d, при умножение получилось число - %d, при деление получилсоь число - %d", first + second, first - second, first * second, first / second );
        
        
        
        int a = 0;
        int b = 0;
        int c = 0;
        
        printf("Ввидите три числа через пробел");
        scanf("%d%d%d", &a,&b,&c);
        if (a > b && a < c || a < b && a > c)
            NSLog(@"Средние число из трех - %d", a);
        else if (b > a && b < c || b < a && b > c)
            NSLog(@"Средние число из трех - %d", b);
        else NSLog(@"Средние число из трех - %d", c);
        
        
    }
    return 0;
}
