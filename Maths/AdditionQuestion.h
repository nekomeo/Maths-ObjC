//
//  AdditionQuestion.h
//  Maths
//
//  Created by Elle Ti on 2017-05-30.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject
@property (nonatomic, assign) NSInteger answer;
@property (nonatomic, strong) NSString *question;

@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;

- (NSInteger) answer;
- (NSTimeInterval) answerTime;

@end
