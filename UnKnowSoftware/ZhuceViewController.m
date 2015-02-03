//
//  ZhuceViewController.m
//  waibao
//
//  Created by 小小程序员 on 15/2/2.
//  Copyright (c) 2015年 小小程序员. All rights reserved.
//

#import "ZhuceViewController.h"

@interface ZhuceViewController (){
    NSInteger flag;
}

@end
#define WIDTH (self.view.frame.size.width)
@implementation ZhuceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
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
    
    //创建view
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(20, lable.frame.origin.y + lable.frame.size.height+10, WIDTH - 40, 120)];
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
    view.layer.cornerRadius = 10;
    //创建注册的按钮
    UIButton *zhuce_button = [[UIButton alloc]initWithFrame:CGRectMake(20, view.frame.origin.y +view.frame.size.height+10, WIDTH - 40, 40)];
    zhuce_button.layer.masksToBounds = YES;
    zhuce_button.layer.cornerRadius = 8;
    [zhuce_button setTitle:@"注册" forState:UIControlStateNormal];
    zhuce_button.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:zhuce_button];
    // 创建textfiled
    UITextField *textone = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, view.frame.size.width, 39)];
    textone.placeholder = @"输入手机号";
    [view addSubview:textone];
    
    UILabel *lableone = [[UILabel alloc]initWithFrame:CGRectMake(0, 39, view.frame.size.width, 1)];
    lableone.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [view addSubview:lableone];
    
    UIView *textone_view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 60, 39)];
    UIImageView *imageone = [[UIImageView alloc]initWithFrame:CGRectMake(22.5, 9.5, 15, 20)];
    imageone.image = [UIImage imageNamed:@"4"];
    [textone_view addSubview:imageone];
    textone.leftView = textone_view;
    textone.leftViewMode = UITextFieldViewModeAlways;
    
    UIView *tt = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 80, 39)];
    UIButton *dd = [[UIButton alloc]initWithFrame:CGRectMake(0, 9.5, 60, 20)];
    dd.backgroundColor = [UIColor colorWithRed:55.0/255 green:139.0/255 blue:224.0/255 alpha:1];
    dd.layer.cornerRadius = 4;
    [dd.titleLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:13]];
    [dd setTitle:@"获验证码" forState:UIControlStateNormal];
    [tt addSubview:dd];
    textone.rightView = tt;
    textone.rightViewMode = UITextFieldViewModeAlways;
    
    
    UITextField *text_two = [[UITextField alloc]initWithFrame:CGRectMake(0, 40, view.frame.size.width, 39)];
    text_two.placeholder = @"输入验证码";
    [view addSubview:text_two];
    
    UILabel *labletwo = [[UILabel alloc]initWithFrame:CGRectMake(0, 79, view.frame.size.width, 1)];
    labletwo.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [view addSubview:labletwo];
    
    UIView *texttwo_view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 60, 39)];
    UIImageView *imagetwo = [[UIImageView alloc]initWithFrame:CGRectMake(22.5, 9.5, 15, 20)];
    imagetwo.image = [UIImage imageNamed:@"3"];
    [texttwo_view addSubview:imagetwo];
    text_two.leftView = texttwo_view;
    text_two.leftViewMode = UITextFieldViewModeAlways;
    
    UITextField *text_three = [[UITextField alloc]initWithFrame:CGRectMake(0, 80, view.frame.size.width, 40)];
    text_three.placeholder = @"输入密码";
    [view addSubview:text_three];
    UIView *textthree_view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 60, 40)];
    UIImageView *imagethree = [[UIImageView alloc]initWithFrame:CGRectMake(22.5, 10, 15, 20)];
    imagethree.image = [UIImage imageNamed:@"11"];
    [textthree_view addSubview:imagethree];
    text_three.leftView = textthree_view;
    text_three.leftViewMode = UITextFieldViewModeAlways;
       // Do any additional setup after loading the view.
}
-(void)dismis{
    [self dismissViewControllerAnimated:YES completion:nil];
}

//隐藏状态栏
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleDefault;
    //UIStatusBarStyleDefault = 0 黑色文字，浅色背景时使用
    //UIStatusBarStyleLightContent = 1 白色文字，深色背景时使用
}

- (BOOL)prefersStatusBarHidden
{
    return YES; // 返回NO表示要显示，返回YES将hiden
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
