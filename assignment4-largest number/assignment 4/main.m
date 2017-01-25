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
        NSArray *sampleArray = @[@2, @44, @11, @99, @35, @135, @9001, @10101];
        NSNumber *largestNumber;
        
        
        // iterates through each number in array, checks against leadNumber which is then assigned the number being checked if a larger one is iterated through..
        for (NSNumber *leadNumber in sampleArray) {
            if (largestNumber < leadNumber) {
                largestNumber = leadNumber;
            }
        }
        
        NSLog(@"%@ is the largest number!", largestNumber);
    }
    return 0;
    
}
