//
//  MyClass.m
//  delegateTest
//
//  Created by WatanabeYoichiro on 2015/10/04.
//  Copyright © 2015年 YoichiroWatanabe. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass

@synthesize delegate;

-(id)init{
    if (self = [super init]) {
        //hoge
    }
    return self;
}

-(void)test{
    //Check sampleMethod1 is exsited on destination of delegate
    if ([self.delegate respondsToSelector:@selector(sampleMethod1)]) {
        //Call sampleMethod1
        [self.delegate sampleMethod1];
    }
    //Check sampleMethod2 is exsited on destination of delegate
    if ([self.delegate respondsToSelector:@selector(sampleMethod2:)]) {
        //Call sampleMethod2
        [self.delegate sampleMethod2:10];
    }
}

@end
