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
    self = [super init];
    if (self)
    {
        _questions = [NSMutableArray new];
    }
    return self;
}


- (double)timeOutput
{
    NSTimeInterval totalTimePerQuestion = 0.0;
    
    for (Question *questions in self.questions)
    {
        totalTimePerQuestion += questions.answerTime;
    }
    
    return totalTimePerQuestion;
}

- (double)timeAverage
{
    double averageTime = [self timeOutput] / self.questions.count;
    return averageTime;
}

@end
