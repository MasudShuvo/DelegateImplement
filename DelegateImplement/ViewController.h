//
//  ViewController.h
//  DelegateImplement
//
//  Created by Shuvo on 1/7/14.
//  Copyright (c) 2014 Masud Shuvo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AnotherClass.h"

@interface ViewController : UIViewController <AnotherClassDelegate>
{
    UILabel *label;
}
@property (nonatomic,strong) AnotherClass *aClass;
@end
