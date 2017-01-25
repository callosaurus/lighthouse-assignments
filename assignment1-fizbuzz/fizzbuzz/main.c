//
//  main.c
//  fizzbuzz
//
//  Created by Callum Davies on 2016-11-07.
//  Copyright © 2016 Callum Davies. All rights reserved.
//

#include <stdio.h>

int main() {
    
    int i;
    
    for (i = 1; i <= 100; i++) {
        if (i % 3 == 0 && i % 5 == 0){
            printf("FizzBuzz \n");
        } else if (i % 3 == 0){
            printf("Fizz \n");
        } else if (i % 5 == 0){
            printf("Buzz \n");
        } else {
            printf("%d \n", i);
        }
    }
    
    return 0;
}
