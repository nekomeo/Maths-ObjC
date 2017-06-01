//
//  QuestionFactory.m
//  Maths
//
//  Created by Elle Ti on 2017-05-31.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSArray *questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
        NSLog(@"%@", questionSubclassNames);
    }
    return self;
}


@end
