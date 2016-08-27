//
//  MyClass.h
//  delegateTest
//
//  Created by WatanabeYoichiro on 2015/10/04.
//  Copyright © 2015年 YoichiroWatanabe. All rights reserved.
//

#import <Foundation/Foundation.h>

//Define delegate
@protocol SampleDelegate <NSObject>

//Declare delegate method(will be defined in destination of delegate)
-(void)sampleMethod1;
-(void)sampleMethod2:(NSInteger)val;

@end

@interface MyClass : NSObject

//Defined property to refer from destination of delegate
@property(nonatomic,assign) id<SampleDelegate> delegate;

//Initializer of delegate
-(id)init;

//Call delegate method
-(void)test;


@end
