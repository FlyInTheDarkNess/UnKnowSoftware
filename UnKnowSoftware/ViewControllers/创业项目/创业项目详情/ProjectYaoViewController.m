//
//  ProjectYaoViewController.m
//  UnKnowSoftware
//
//  Created by 赵中良 on 15/2/5.
//  Copyright (c) 2015年 com.iuiue. All rights reserved.
//

#import "ProjectYaoViewController.h"
#import "RDVTabBarController.h"

@interface ProjectYaoViewController ()
@property (weak, nonatomic) IBOutlet UILabel *allPriceLabel;
@property (weak, nonatomic) IBOutlet UITextField *priceTF;
@property (weak, nonatomic) IBOutlet UIButton *tijiaoButton;
@property (weak, nonatomic) IBOutlet UIView *TView;


@end

@implementation ProjectYaoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
             *设置image圆角边框
             */
            CALayer * downButtonLayer = [_tijiaoButton layer];
            [downButtonLayer setMasksToBounds:YES];
            [downButtonLayer setCornerRadius:10.0];
    /*
     *设置image圆角边框
     */
    CALayer * MyViewLayer = [_tijiaoButton layer];
    [MyViewLayer setMasksToBounds:YES];
    [MyViewLayer setCornerRadius:10.0];
    
   
     
    

    /*
     *设置image圆角边框
     */
    CALayer * MViewLayer = [_TView layer];
    [MViewLayer setMasksToBounds:YES];
    [MViewLayer setCornerRadius:10.0];
    [MViewLayer setBorderWidth:2.0];
    [MViewLayer setBorderColor:[[UIColor grayColor] CGColor]];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [_priceTF resignFirstResponder];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [[self rdv_tabBarController] setTabBarHidden:YES animated:YES];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
//    [[self rdv_tabBarController] setTabBarHidden:NO animated:YES];
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
