//
//  TalkViewController.m
//  waibao
//
//  Created by macmini on 15/2/4.
//  Copyright (c) 2015年 小小程序员. All rights reserved.
//

#import "TalkViewController.h"
#import "RDVTabBarController.h"

@interface TalkViewController ()

@end

@implementation TalkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(10, 80, self.view.frame.size.width - 20, 170)];
    [self.view addSubview:view];
    view.backgroundColor = [UIColor whiteColor];
    view.layer.masksToBounds = YES;
    view.layer.cornerRadius = 10;
    view.layer.borderWidth = 0.3;
    view.layer.borderColor = [UIColor grayColor].CGColor;
    
    UIView *viewone = [[UIView alloc]initWithFrame:CGRectMake(10, 15, view.frame.size.width - 20, 70)];
    [view addSubview:viewone];
    viewone.backgroundColor = [UIColor whiteColor];
    viewone.layer.masksToBounds = YES;
    viewone.layer.cornerRadius = 6;
    viewone.layer.borderWidth = 0.3;
    viewone.layer.borderColor = [UIColor grayColor].CGColor;
    
    //创建textfilde
    UITextField *textone = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, viewone.frame.size.width, 34)];
    [viewone addSubview:textone];
    textone.placeholder = @"请输入手机号";
    UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 70, 34)];
    lable.text= @"姓名:";
    lable.textAlignment = NSTextAlignmentCenter;
    textone.leftView = lable;
    textone.leftViewMode = UITextFieldViewModeAlways;
    
    UILabel *lableline= [[UILabel alloc]initWithFrame:CGRectMake(0, 34, viewone.frame.size.width, 0.3)];
    lableline.backgroundColor = [UIColor grayColor];
    [viewone addSubview:lableline];
    
    
    UITextField *texttwo = [[UITextField alloc]initWithFrame:CGRectMake(0, 34.3, viewone.frame.size.width, 35)];
    texttwo.placeholder = @"请输入手机号";
    [viewone addSubview:texttwo];
    
    UILabel *lableo = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 70, 34)];
    lableo.text= @"电话:";
    lableo.textAlignment = NSTextAlignmentCenter;
   texttwo.leftView = lableo;
    texttwo.leftViewMode = UITextFieldViewModeAlways;
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(10, 115, view.frame.size.width - 20, 40)];
    [view addSubview:button];
    button.backgroundColor = [UIColor orangeColor];
    button.layer.masksToBounds = YES;
    button.layer.cornerRadius = 8;
    [button setTitle:@"提交" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    
    UILabel *donelable = [[UILabel alloc]initWithFrame:CGRectMake(10, view.frame.origin.y + view.frame.size.height +10, self.view.frame.size.width - 20, 20)];
    [donelable setFont:[UIFont fontWithName:@"HelveticaNeue" size:14]];
    donelable.text = @"请确认您的个人信息以及联系方式,\n如有更改请进行更改";
    donelable.numberOfLines = 2;
    [donelable sizeToFit];
    donelable.alpha = 0.6;
    [self.view addSubview:donelable];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [[self rdv_tabBarController] setTabBarHidden:YES animated:YES];
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
