//
//  SubtractionQuestion.m
//  Maths
//
//  Created by Elle Ti on 2017-05-31.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

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
    NSInteger subtract = super.leftValue - super.rightValue;
    super.question = [NSString stringWithFormat:@"%li + %li", super.leftValue, super.rightValue];
    super.answer = subtract;
}

@end
