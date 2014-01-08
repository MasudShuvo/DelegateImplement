//
//  AnotherClass.h
//  DelegateImplement
//
//  Created by Shuvo on 1/7/14.
//  Copyright (c) 2014 Masud Shuvo. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol AnotherClassDelegate;

@interface AnotherClass : NSObject
@property (nonatomic, weak) id <AnotherClassDelegate> delegate;
@end

@protocol AnotherClassDelegate <NSObject>
@optional
- (void)didInitiated:(AnotherClass *)aClass;
- (void)didFired;
@end