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
        BOOL gamePlay = YES;
        char input[255]; // 255 unit long array of characters
        
        
        while (gamePlay)
        {
            AdditionQuestion *newQuestion = [[AdditionQuestion alloc] init];
            
            NSLog(@"%@", newQuestion.question); // quit option
            
//            NSString *result = [NSString stringWithCString:someCString encoding:NSUTF8StringEncoding];
            fgets(input, 255, stdin); // limit input max to 255 characters
            // NSInteger numberSomething = atoi(input); // should convert character to NSInteger
//            NSString *answer = stringByTimmingCharactersInSet:result;
            NSString *convertedChar = [NSString stringWithUTF8String:input]; // Convert char array to an NSString objec
            NSNumberFormatter *stringToNumber = [[NSNumberFormatter alloc] init];
            stringToNumber.numberStyle = NSNumberFormatterNoStyle;
            
            NSNumber *myNumber = [stringToNumber numberFromString:convertedChar];
            
            if ([myNumber integerValue] == newQuestion.answer)
            {
                NSLog(@"Right!");
            }
            else
            {
                NSLog(@"Wrong!");
            }
        }
    }
    return 0;
}
