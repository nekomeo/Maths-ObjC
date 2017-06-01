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

//- (NSInteger) answer;
//- (NSTimeInterval) answerTime;
//- (NSInteger)answer
//{
//    _endTime = [NSDate date];
//    return _answer;
//}
//
//- (NSTimeInterval) answerTime
//{
//    NSTimeInterval answerTime = [_endTime timeIntervalSinceDate:_startTime];
//    return answerTime;
//}

- (double)timeOutput
{
    NSTimeInterval totalTimePerQuestion = 0.0;
    
    for (Question *questions in self.questions)
    {
        totalTimePerQuestion += questions.answerTime;
    }
//    NSString *totalTime = [NSString stringWithFormat:@"%.01f", questionManager.timeOutput];
//    NSLog(@"Total time %@s", totalTime);
    
//    NSTimeInterval averageTime = totalTimePerQuestion / self.questions.count;
    
    return totalTimePerQuestion;
}

- (double)timeAverage
{
    //double somevar = [self timeOutput];
    //NSTimeInterval *averageTime = [[_timeOutput alloc] init];
    double averageTime = [self timeOutput] / self.questions.count;
    
    return averageTime;
}

@end
