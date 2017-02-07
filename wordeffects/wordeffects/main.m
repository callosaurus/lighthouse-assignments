//
//  main.m
//  wordeffects
//
//  Created by Callum Davies on 2017-02-06.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 255 unit long array of characters
        char inputChars[255];
        int i = 1;
        
        //infinite loop
        while (i == 1) {
            
            
            printf("Input a string: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            // print as a c string
            printf("Your string is %s\n", inputChars);
            
            // convert char array to an NSString object
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            // Uppercase
            NSString *loudString = [inputString uppercaseString];
            NSLog(@"Your string, but LOUDER, is: %@", loudString);
            
            //Lowercase
            NSString *lowString = [inputString lowercaseString];
            NSLog(@"Your string in all lower case is: %@", lowString);
            
            //Numberized. integerValue is 0 if string does not have an integerValue.
            NSInteger numberizedString = [inputString integerValue];
            if (numberizedString != 0) {
                NSLog(@"You entered a number!, it is: %li", (long)numberizedString);
            }
            
            
            
            
            NSLog(@"The end..., back to the beginning! \n.\n.\n.");
            i = 1;
        }
        
    }
    return 0;
}
