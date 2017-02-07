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
        while (YES) {
            
            NSLog(@"MENU:\n 1.Uppercase\n 2.Lowercase\n 3.Numberize\n 4.Canadianize\n 5.Respond\n 6.De-Space-It\n 7.Remove Periods");
            
            char inputChars[255];
            char optionNumber[3];
        
            printf("Please input a string: ");
            scanf("%[^\n]s", inputChars);
            while(getchar() != '\n');
            printf("Please input a menu number: ");
            scanf("%c", optionNumber);
            while(getchar() != '\n');
           
        
            // convert char array to an NSString object
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            //convert option choice to NSString object
            NSString *inputOption = [NSString stringWithUTF8String:optionNumber];
            //delete extraneous line break from inputString
            inputString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
            
            NSLog(@"You chose to input this string: %@, and this option: %@", inputString, inputOption);
            
            
            // 1. Uppercase
            if ([inputOption isEqualToString:@"1"]) {
                NSString *loudString = [inputString uppercaseString];
                NSLog(@"Your string, but LOUDER, is: %@", loudString);
                NSLog(@"Memory Address: %p", loudString);
            
            // 2. Lowercase
            } else if ([inputOption isEqualToString:@"2"]) {
                NSString *lowString = [inputString lowercaseString];
                NSLog(@"Your string in all lower case is: %@", lowString);
                NSLog(@"Memory Address: %p", lowString);
            
            // 3. Numberize
            } else if ([inputOption isEqualToString:@"3"]) {
                NSNumberFormatter *numberizedString = [[NSNumberFormatter alloc] init];
                
                if ([numberizedString numberFromString:inputString]) {
                    int integerNumber = [inputString intValue];
                    NSLog(@"You entered a number!, it is: %i", integerNumber);
                    
                } else {
                    NSLog(@"%@ can't be numberized, it's not a number!", inputString);
                }
                
            // 4. Canadianize
            } else if ([inputOption isEqualToString:@"4"]) {
                NSString *canadaString = [inputString stringByAppendingString:@", eh?"];
                NSLog(@"Canadians would ask/say: %@", canadaString);
                NSLog(@"Memory Address: %p", canadaString);
                
            // 5. Respond
            } else if ([inputOption containsString:@"5"]) {
                if ([inputString hasSuffix:@"?"]) {
                    NSLog(@"I don't know");
                } else if ([inputString hasSuffix:@"?"]) {
                    NSLog(@"Whoa, calm down!");
                } else {
                    NSLog(@"I was expecting either a ? or !...");
                }
                
            // 6. De-space
            } else if ([inputOption containsString:@"6"]) {
                NSString *hyphenatedString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                NSLog(@"Your string with hyphens instead of spaces is: %@", hyphenatedString);
                NSLog(@"Memory Address: %p", hyphenatedString);
            
            
            // 7. Remove Periods
            } else if ([inputOption containsString:@"7"]) {
                NSString *modifiedString = [inputString stringByReplacingOccurrencesOfString:@"." withString:@""];
                NSLog(@"Your string with hyphens instead of spaces is: %@", modifiedString);
                NSLog(@"Memory Address: %p", modifiedString);
            }
            
            else {
                NSLog(@"\nYour input wasn't what I was expecting...");
            }
            
            NSLog(@"\n.\n.\n.\n");
        
        }
    }
    return 0;
}
