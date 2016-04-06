//
//  ViewController.m
//  GitHub-CocoaPods
//
//  Created by ming on 16/4/6.
//  Copyright © 2016年 ming. All rights reserved.
//

#import "ViewController.h"
#define KMainScreenWidth [UIScreen mainScreen].bounds.size.width
#define KMainScreenHeight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake((KMainScreenWidth - 80)/2.0, 30, 80, 50);
    [button setTitle:@"click" forState:UIControlStateNormal];
    [self.view addSubview:button];
    button.backgroundColor = [UIColor lightGrayColor];
    [button addTarget:self action:@selector(btnAct:) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)btnAct:(UIButton *)button{
    
    UIImageView *normalImage = [[UIImageView alloc]init];
    normalImage.frame = CGRectMake((KMainScreenWidth - 250)/2.0, 100, 250, 300);
    normalImage.contentMode = UIViewContentModeScaleAspectFit;
    //    normalImage.backgroundColor = [UIColor colorWithRed:.1 green:.1 blue:.1 alpha:.13];
    normalImage.image = [UIImage imageNamed:@"mayun.png"];
    [self.view addSubview:normalImage];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
