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
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        
        while (gameOn)
        {
            Question *newQuestion = [questionFactory generateRandomQuestion];
            [questionManager.questions addObject:newQuestion];
          
            
            NSString *convertedChar = [InputHandler questionGenerator:newQuestion.question];
            
            NSInteger myAnswer = [convertedChar integerValue];
            
            if ([convertedChar isEqualToString:@"quit"])
            {
                break;
            }
            else if (myAnswer == newQuestion.answer)
            {
                NSLog(@"Right!");
                scoreKeeper.right++;
            }
            else
            {
                NSLog(@"Wrong!");
                scoreKeeper.wrong++;
            }
            NSLog(@"%@",[scoreKeeper score]);
//            NSLog(@"Time between questions: %f", [question answerTime]);
            NSLog(@"%@", [questionManager timeOutput]);
        }
        
    }
    return 0;
}
