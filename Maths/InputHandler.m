//
//  InputHandler.m
//  Maths
//
//  Created by Elle Ti on 2017-05-30.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (NSString *)readInput
{
    char input[255];
    
    fgets(input, 255, stdin);
    strtok(input, "\n");
    
    NSString *convertedChar = [NSString stringWithUTF8String:input]; // Convert char array to an NSString object
    
    return convertedChar;
}


@end
