//
//  ViewController.m
//  ViewBorderLine
//
//  Created by eric on 2017/10/31.
//  Copyright © 2017年 huangzhifei. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Borders.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *testView = [[UIView alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 100)];
    testView.backgroundColor = [UIColor grayColor];
    [testView fm_addViewBackedSectionDivideInWithOptions:FMUIViewBorderBottom color:[UIColor redColor]];
    [self.view addSubview:testView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
