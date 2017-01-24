//
//  main.m
//  ios prep assignment #3
//
//  Created by Callum Davies on 2017-01-21.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Toyota.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *nissan = [[Car alloc]initWithModel:@"Rogue"];
        [nissan drive];
        Toyota *toyota = [[Toyota alloc]init];
        [toyota drive];
        
        //insert code here...
        //NSLog(@"Hello, World!");
    }
    return 0;
}
