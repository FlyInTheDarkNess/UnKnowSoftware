//
//  LoginViewController.m
//  新木鸟
//
//  Created by macmini on 15/1/30.
//  Copyright (c) 2015年 macmini. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()<UITextFieldDelegate>

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:39.0/255 green:114.0/255 blue:220.0/255 alpha:1];
    // Do any additional setup after loading the view from its nib.
    
    _textfiled_view.layer.masksToBounds = YES;
    _textfiled_view.layer.cornerRadius = 7;
    _button_save.layer.masksToBounds = YES;
    _button_save.layer.cornerRadius = 3;
    _button_login.layer.masksToBounds = YES;
    _button_login.layer.cornerRadius = 8;
    UIView *pass_view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 40)];
    UIImageView *image = [[UIImageView alloc]initWithFrame:CGRectMake(10, 5, 25, 25)];
    image.image = [UIImage imageNamed:@"login.png"];
    [pass_view addSubview:image];
    
    UIView *login_view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 40)];
    UIImageView *imag = [[UIImageView alloc]initWithFrame:CGRectMake(10, 5, 25, 25)];
    imag.image = [UIImage imageNamed:@"pass.png"];
    [login_view addSubview:imag];
    
    _textone.leftView = pass_view;
    _textone.leftViewMode = UITextFieldViewModeAlways;
    _textone.placeholder = @"请输入您的账号";
    _texttwo.leftView = login_view;
    _texttwo.leftViewMode = UITextFieldViewModeAlways;
    _texttwo.placeholder = @"请输入您的密码";
    _textone.delegate = self;
    _texttwo.delegate = self;
    
    
}
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    [self.view setFrame:CGRectMake(0, -70, self.view.frame.size.width, self.view.frame.size.height)];
}
-(void)textFieldDidEndEditing:(UITextField *)textField{
    [self.view setFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [_textone resignFirstResponder];
    [_texttwo resignFirstResponder];
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
