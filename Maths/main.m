//
//  main.m
//  Maths
//
//  Created by Elle Ti on 2017-05-30.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        BOOL gameOn = YES;
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        InputHandler *inputHandler = [[InputHandler alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        
        while (gameOn)
        {
            Question *newQuestion = [[Question alloc] init];
            [questionManager.questions addObject:newQuestion];
            newQuestion = [questionFactory generateRandomQuestion];
            
            
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
                NSString *totalTime = [NSString stringWithFormat:@"%.01f", questionManager.timeOutput];
                NSString *averageTime = [NSString stringWithFormat:@"%0.1f", questionManager.timeAverage];
                NSLog(@"Total time: %@s, average time: %@", totalTime, averageTime);
            }
            else if ([myNumber integerValue] != newQuestion.answer)
            {
                NSLog(@"Wrong!");
                scoreKeeper.wrong++;
                NSLog(@"%@", [scoreKeeper score]);
                NSString *totalTime = [NSString stringWithFormat:@"%.01f", questionManager.timeOutput];
                NSString *averageTime = [NSString stringWithFormat:@"%0.1f", questionManager.timeAverage];
                NSLog(@"Total time: %@s, average time: %@", totalTime, averageTime);
            }
            else
            {
                continue;
            }
        }
        
    }
    return 0;
}
