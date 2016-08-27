//
//  ViewController.m
//  delegateTest
//
//  Created by WatanabeYoichiro on 2015/10/04.
//  Copyright © 2015年 YoichiroWatanabe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self main];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)main{
    MyClass *_myclass = [[MyClass alloc] init];
    _myclass.delegate = self;
    [_myclass test];
}

-(void)sampleMethod1{
    NSLog(@"%s", "sampleMethod1 log");
}

-(void)sampleMethod2:(NSInteger)val{
    NSLog(@"sampleMethod2 : %ld", (long)val);
}

@end
