//
//  MultiplicationQuestion.m
//  Maths
//
//  Created by Elle Ti on 2017-05-31.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

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
    super.question = [NSString stringWithFormat:@"%li * %li", super.leftValue, super.rightValue];
    super.answer = self.leftValue * self.rightValue;
}

@end
