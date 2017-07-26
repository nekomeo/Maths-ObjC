//
//  QuestionManager.m
//  Maths
//
//  Created by Elle Ti on 2017-05-31.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init
{
    if (self = [super init])
    {
        _questions = [NSMutableArray new];
    }
    return self;
}


- (NSString *)timeOutput
{
    NSTimeInterval totalTime = 0.0;
    
    for (Question *questions in self.questions)
    {
        totalTime += [questions answerTime];
    }
    NSTimeInterval averageTime = totalTime / self.questions.count;
    
    NSString *timeToAnswer = [NSString stringWithFormat:@"Total time: %.2fs, average time: %.2fs", totalTime, averageTime];
    
    return timeToAnswer;
}

@end
