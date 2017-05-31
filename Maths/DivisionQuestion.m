//
//  DivisionQuestion.m
//  Maths
//
//  Created by Elle Ti on 2017-05-31.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion

- (instancetype)init
{
    if (self = [super init])
    {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion
{
    NSInteger divide = super.leftValue / super.rightValue;
    super.question = [NSString stringWithFormat:@"%li + %li", super.leftValue, super.rightValue];
    super.answer = divide;
}

@end
