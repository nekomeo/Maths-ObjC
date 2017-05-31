//
//  main.m
//  Maths
//
//  Created by Elle Ti on 2017-05-30.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        char input[255]; // 255 unit long array of characters
        
        while (gameOn)
        {
            AdditionQuestion *newQuestion = [[AdditionQuestion alloc] init];
            
            NSLog(@"Enter 'quit' to end game");
            NSLog(@"%@", newQuestion.question); // quit option
            
            fgets(input, 255, stdin); // limit input max to 255 characters
            strtok(input, "\n");
            
//            NSInteger numberSomething = atoi(input); // should convert character to NSInteger. Alt to convertedChar
            NSString *convertedChar = [NSString stringWithUTF8String:input]; // Convert char array to an NSString objec
            NSNumberFormatter *stringToNumber = [[NSNumberFormatter alloc] init];
            stringToNumber.numberStyle = NSNumberFormatterNoStyle;
            
            NSNumber *myNumber = [stringToNumber numberFromString:convertedChar];
            
            if ([convertedChar isEqualToString:@"quit"])
            {
                return 0;
            }
            else if ([myNumber integerValue] == newQuestion.answer)
            {
                NSLog(@"Right!");
            }
            else if ([myNumber integerValue] != newQuestion.answer)
            {
                NSLog(@"Wrong!");
            }
            else
            {
                continue;
            }
        }
    }
    return 0;
}
