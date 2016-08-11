//
//  ViewController.m
//  LaunchAnimation-demo
//
//  Created by Arvin on 16/8/11.
//  Copyright © 2016年 Arvin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"Home";
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImageView *imageView = [[UIImageView alloc] init];
    CGFloat width = self.view.frame.size.width;
    CGFloat heigth = self.view.center.y-200-64;
    imageView.frame = CGRectMake(0, heigth, width, 400);
    imageView.image = [UIImage imageNamed:@"icon"];
    [self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
