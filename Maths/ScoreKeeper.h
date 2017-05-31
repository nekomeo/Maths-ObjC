//
//  ScoreKeeper.h
//  Maths
//
//  Created by Elle Ti on 2017-05-30.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property NSNumber *right;
@property NSNumber *wrong;

-(NSNumber *)score;

@end
