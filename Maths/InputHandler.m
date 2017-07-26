//
//  InputHandler.m
//  Maths
//
//  Created by Elle Ti on 2017-05-30.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *)questionGenerator:(NSString *)queryString
{
    char input[255];
    
    NSLog(@"Please enter a value. Enter 'quit' to end.\n%@", queryString);
    
    fgets(input, 255, stdin);
    NSString *trimmedInput = [[NSString stringWithCString:input encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]; // Convert char array to an NSString object
    
    return trimmedInput;
}


@end
