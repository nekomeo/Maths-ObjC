//
//  AdditionQuestion.m
//  Maths
//
//  Created by Elle Ti on 2017-05-31.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    if (self = [super init])
    {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion
{}

//NSInteger num1 = arc4random_uniform(91) + 10;
//NSInteger num2 = arc4random_uniform(91) + 10;
//NSInteger add = num1 + num2;
//
//
//_question = [NSString stringWithFormat:@"%li + %li", num1, num2];
//_answer = add;

@end
