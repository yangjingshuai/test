//
//  ViewController.m
//  ClockDemo
//
//  Created by yjs on 16/5/9.
//  Copyright © 2016年 yjs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    CAShapeLayer *layer = [[CAShapeLayer alloc]init];
//    layer.frame = CGRectMake(110, 100, 150, 100);
//    layer.backgroundColor = [UIColor blackColor ].CGColor;
//    [self.view.layer addSublayer:layer];
    
//    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(110, 100, 150, 100)];
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(110, 60, 100, 100) cornerRadius:50];
    CAShapeLayer *layer = [[CAShapeLayer alloc]init];
    layer.path = path.CGPath;
    layer.fillColor = [UIColor clearColor].CGColor;
    layer.strokeColor = [UIColor redColor].CGColor;
    layer.lineWidth = 5;
    [self.view.layer addSublayer:layer];
    
    CGFloat radius = 50.0;
    CGFloat startAngle = 0.0;
    CGFloat endAngle = M_PI * 2;
    UIBezierPath *path_1 = [UIBezierPath bezierPathWithArcCenter:self.view.center radius:radius startAngle:startAngle endAngle:endAngle clockwise:true];
    CAShapeLayer *layer_1 = [[CAShapeLayer alloc]init];
    layer_1.path = path_1.CGPath;
    layer_1.fillColor = [UIColor clearColor].CGColor;
    layer_1.strokeColor = [UIColor redColor].CGColor;
    layer_1.lineWidth = 5;
    [self.view.layer addSublayer:layer_1];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
