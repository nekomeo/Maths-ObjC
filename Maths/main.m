//
//  main.m
//  Maths
//
//  Created by Elle Ti on 2017-05-30.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        BOOL gameOn = YES;
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        InputHandler *inputHandler = [[InputHandler alloc] init];
        
        while (gameOn)
        {
            AdditionQuestion *newQuestion = [[AdditionQuestion alloc] init];
            
            NSLog(@"Enter 'quit' to end game");
            NSLog(@"%@", newQuestion.question); // quit option
            
            NSString *convertedChar = [inputHandler readInput];
            
            NSNumberFormatter *stringToNumber = [[NSNumberFormatter alloc] init];
            stringToNumber.numberStyle = NSNumberFormatterNoStyle;
            
            
            NSNumber *myNumber = [stringToNumber numberFromString:convertedChar];
            
            if ([convertedChar isEqualToString:@"quit"])
            {
                break;
            }
            else if ([myNumber integerValue] == newQuestion.answer)
            {
                NSLog(@"Right!");
                scoreKeeper.right++;
                NSLog(@"%@", [scoreKeeper score]);
                NSLog(@"Execution time: %.01fs", [newQuestion answerTime]);
            }
            else if ([myNumber integerValue] != newQuestion.answer)
            {
                NSLog(@"Wrong!");
                scoreKeeper.wrong++;
                NSLog(@"%@", [scoreKeeper score]);
                NSLog(@"Execution time: %.01fs", [newQuestion answerTime]);
            }
            else
            {
                continue;
            }
        }
        
    }
    return 0;
}
