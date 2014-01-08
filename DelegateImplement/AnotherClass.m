//
//  AnotherClass.m
//  DelegateImplement
//
//  Created by Shuvo on 1/7/14.
//  Copyright (c) 2014 Masud Shuvo. All rights reserved.
//

#import "AnotherClass.h"

@implementation AnotherClass

- (id)init
{
    if(self = [super init])
    {
        [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(initiatedAnotherClass) userInfo:nil repeats:NO];
        
        [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(doSomething) userInfo:nil repeats:NO];
    }
    
    return self;
}

- (void)initiatedAnotherClass
{
    if ([self.delegate respondsToSelector:@selector(didInitiated:)]) {
        [self.delegate didInitiated:self];
    }
}

- (void)doSomething
{
    if ([self.delegate respondsToSelector:@selector(didFired)]) {
        [self.delegate didFired];
    }
}

@end
