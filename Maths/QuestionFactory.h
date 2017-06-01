//
//  QuestionFactory.h
//  Maths
//
//  Created by Elle Ti on 2017-05-31.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

@property NSArray *questionSubclassNames;

- (Question *)generateRandomQuestion;

@end
