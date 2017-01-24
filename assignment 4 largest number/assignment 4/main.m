//
//  main.m
//  assignment 4
//
//  Created by Callum Davies on 2017-01-22.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        NSArray *numberArray = @[@44, @5, @6, @1000, @3747, @18127];
        
        NSNumber *maxnumber=[numberArray valueForKeyPath:@"@max.self"];
        
        NSLog(@"The largest number is %@", maxnumber);
        
    }
    return 0;
    
}
