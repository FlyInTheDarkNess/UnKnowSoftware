//
//  ForgetViewController.m
//  UnKnowSoftware
//
//  Created by macmini on 15/2/5.
//  Copyright (c) 2015年 com.iuiue. All rights reserved.
//

#import "ForgetViewController.h"

@interface ForgetViewController ()
#define WIDTH (self.view.frame.size.width)
@end

@implementation ForgetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.view.backgroundColor = [UIColor colorWithRed:55.0/255 green:139.0/255 blue:224.0/255 alpha:1];
    //返回按钮
    UIButton *left_button = [[UIButton alloc]initWithFrame:CGRectMake(10, 20, 45, 45)];
    [left_button setBackgroundImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    [left_button addTarget:self action:@selector(dismis) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:left_button];
    //标题
    UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(WIDTH/2 - 40, 20, 80, 45)];
    [self.view addSubview:lable];
    lable.text = @"手机注册";
    lable.textColor = [UIColor whiteColor];
    //右边按钮
    UIButton *right = [[UIButton alloc]initWithFrame:CGRectMake(WIDTH-65, 20, 45, 45)];
    [self.view addSubview:right];
    [right setTitle:@"完成" forState:UIControlStateNormal];
    
    UITextField *textfild = [[UITextField alloc]initWithFrame:CGRectMake(20, 84, self.view.frame.size.width - 40, 40)];
    textfild.backgroundColor = [UIColor whiteColor];
    textfild.placeholder = @"输入邮箱或者手机号";
    textfild.layer.masksToBounds = YES;
    textfild.layer.cornerRadius = 8;
    textfild.layer.borderWidth = 0.3;
    [self.view addSubview:textfild];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(20, 155, self.view.frame.size.width - 40, 40)];
    button.backgroundColor = [UIColor greenColor];
    [button setTitle:@"立即提交" forState:UIControlStateNormal];
    [button.titleLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Bold" size:17]];
    button.layer.masksToBounds = YES;
    button.layer.cornerRadius = 8;
    [self.view addSubview:button];
    // Do any additional setup after loading the view.
    
}
-(void)dismis{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
