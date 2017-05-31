//
//  QuestionManager.m
//  Maths
//
//  Created by Elle Ti on 2017-05-31.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "QuestionManager.h"
#include "Question.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _question = [NSMutableArray new];
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

//- (NSString *)timeOutput
//{
//    Question *timeOutput = [[Question alloc] init];
//    timeOutput =
//    
//    return timeOutput;
//}

@end
