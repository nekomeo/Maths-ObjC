//
//  AdditionQuestion.m
//  Maths
//
//  Created by Elle Ti on 2017-05-30.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _rightValue = arc4random_uniform(91) + 10;
        _leftValue = arc4random_uniform(91) + 10;
        _startTime = [NSDate date];
    }
    return self;
}

- (NSInteger)answer
{
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval) answerTime
{
    NSTimeInterval answerTime = [_endTime timeIntervalSinceDate:_startTime];
    return answerTime;
}

- (void)generateQuestion
{
    
}

@end
