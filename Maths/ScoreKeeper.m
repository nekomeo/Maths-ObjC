//
//  ScoreKeeper.m
//  Maths
//
//  Created by Elle Ti on 2017-05-30.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (NSString *)score
{
    double total = self.right + self.wrong;
    double average = self.right / total * 100.0f;
    
    // Keeps track of the score of right and wrong answers
    NSString *tracker = [NSString stringWithFormat:@"Score: %li right, %li wrong, --- %.2f\%%", self.right, self.wrong, average];
    return tracker;
}

@end
