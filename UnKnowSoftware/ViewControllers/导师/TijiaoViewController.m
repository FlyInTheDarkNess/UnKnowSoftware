//
//  TijiaoViewController.m
//  waibao
//
//  Created by 小小程序员 on 15/2/4.
//  Copyright (c) 2015年 小小程序员. All rights reserved.
//

#import "TijiaoViewController.h"

@interface TijiaoViewController ()

@end

@implementation TijiaoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    self.navigationItem.title = @"提交项目";
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(10, 74, self.view.frame.size.width - 20, 150)];
    view.backgroundColor = [UIColor whiteColor];
    view.layer.masksToBounds = YES;
    view.layer.cornerRadius = 10;
    
    UITextField *text = [[UITextField alloc]initWithFrame:CGRectMake(20, 20, view.frame.size.width - 40, 40)];
    text.placeholder = @"请选择您要提交的项目";
    text.layer.masksToBounds = YES;
    text.layer.cornerRadius = 7;
    text.layer.borderWidth = 0.4;
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 50, 40)];
//    [button setTitle:@"选择" forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:@"demo_xiala"] forState:UIControlStateNormal];
    
    
    button.backgroundColor = [UIColor colorWithRed:223.0/225 green:232.0/255 blue:245.0/255 alpha:1];
    text.rightView = button;
    text.rightViewMode = UITextFieldViewModeAlways;
    [view addSubview:text];
    [self.view addSubview:view];
    
    UIButton *bu = [[UIButton alloc]initWithFrame:CGRectMake(20, 90, view.frame.size.width - 40, 40)];
    [view addSubview:bu];
    bu.layer.masksToBounds = YES;
    bu.layer.cornerRadius = 7;
    bu.backgroundColor = [UIColor orangeColor];
    [bu setTitle:@"提交" forState:UIControlStateNormal];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillAppear:(BOOL)animated{
    self.tabBarController.tabBar.hidden = YES;
}
-(void)viewWillDisappear:(BOOL)animated{
    self.tabBarController.tabBar.hidden = NO;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
