//
//  ScoreKeeper.h
//  Maths
//
//  Created by Elle Ti on 2017-05-30.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property NSInteger right;
@property NSInteger wrong;

-(NSString *)score;

@end
