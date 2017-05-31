//
//  AdditionQuestion.m
//  Maths
//
//  Created by Elle Ti on 2017-05-30.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

@synthesize answer = _answer;

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        NSInteger num1 = arc4random_uniform(91) + 10;
        NSInteger num2 = arc4random_uniform(91) + 10;
        NSInteger add = num1 + num2;
        
        
        _question = [NSString stringWithFormat:@"%li + %li", num1, num2];
        _answer = add;
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

@end
