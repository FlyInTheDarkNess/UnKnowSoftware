//
//  InvestorsCell.m
//  waibao
//
//  Created by 小小程序员 on 15/2/2.
//  Copyright (c) 2015年 小小程序员. All rights reserved.
//

#import "InvestorsCell.h"

@implementation InvestorsCell
@synthesize view;
@synthesize head_image;
@synthesize lable_one;
@synthesize lable_two;
@synthesize lable_three;
@synthesize lable_four;
@synthesize button;
@synthesize lable_five;
@synthesize lable_six;

@synthesize lable_seven;
@synthesize lable_eight;
@synthesize lable_nine;
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    CGRect r = [UIScreen mainScreen].bounds;
        view = [[UIView alloc]initWithFrame:CGRectMake(5, 10, r.size.width - 10, 155)];
        view.backgroundColor = [UIColor whiteColor];
        view.layer.borderWidth = 0.1;
        [self.contentView addSubview:view];
    
        head_image = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 60, 60)];
        [view addSubview:head_image];
    
        lable_one = [[UILabel alloc]initWithFrame:CGRectMake(80, 5, 60, 30)];
        [view addSubview:lable_one];
    lable_one.textColor = [UIColor colorWithRed:55.0/255 green:139.0/255 blue:224.0/255 alpha:1];
    [lable_one setFont:[UIFont fontWithName:@"HelveticaNeue" size:18]];
    
        lable_two = [[UILabel alloc]initWithFrame:CGRectMake(80, 35, 60, 15)];
    [lable_two setFont:[UIFont fontWithName:@"HelveticaNeue" size:14]];
        [view addSubview:lable_two];
    
        lable_three = [[UILabel alloc]initWithFrame:CGRectMake(80, 55, 60, 15)];
    [lable_three setFont:[UIFont fontWithName:@"HelveticaNeue" size:14]];
        [view addSubview:lable_three];
    
    lable_four = [[UILabel alloc]initWithFrame:CGRectMake(180, 55, 60, 15)];
    [lable_four setFont:[UIFont fontWithName:@"HelveticaNeue" size:14]];
    [view addSubview:lable_four];
    
        button = [[UIButton alloc]initWithFrame:CGRectMake(view.frame.size.width - 80, 15, 70, 25)];
    button.backgroundColor = [UIColor blueColor];
    [button setTitle:@"建立约谈" forState:UIControlStateNormal];
    [button.titleLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:13]];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor colorWithRed:55.0/255 green:139.0/255 blue:224.0/255 alpha:1]];
    [button addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
        [view addSubview:button];
    
        lable_five = [[UILabel alloc]initWithFrame:CGRectMake(10, 80, view.frame.size.width-10,15)];
    [lable_five setFont:[UIFont fontWithName:@"HelveticaNeue" size:14]];
    lable_five.alpha = 0.4;
        [view addSubview:lable_five];
    
        lable_six = [[UILabel alloc]initWithFrame:CGRectMake(10, 100, view.frame.size.width-10, 30)];
    [lable_six setFont:[UIFont fontWithName:@"HelveticaNeue" size:14]];
    lable_six.text = @"远程教育——拉开建设阿莱克斯加拉加斯，就啊浑善达克哈萨克多哈看啊看就是贷款计划，阿圣诞节狂欢啊就是很困惑";
    lable_six.numberOfLines = 3;
    [lable_six sizeToFit];
        [view addSubview:lable_six];
    
    lable_seven = [[UILabel alloc]initWithFrame:CGRectMake(140, 35, 40, 15)];
    [lable_seven setFont:[UIFont fontWithName:@"HelveticaNeue" size:14]];
    //lable_seven.textAlignment = NSTextAlignmentCenter;
    lable_seven.textColor =[UIColor orangeColor];
    lable_seven.text = @"143";
    [view addSubview:lable_seven];
    
    lable_eight = [[UILabel alloc]initWithFrame:CGRectMake(140, 55, 40, 15)];
    [lable_eight setFont:[UIFont fontWithName:@"HelveticaNeue" size:14]];
    //lable_eight.textAlignment = NSTextAlignmentCenter;
    lable_eight.textColor =[UIColor orangeColor];
    lable_eight.text = @"239";
    [view addSubview:lable_eight];
    
    lable_nine = [[UILabel alloc]initWithFrame:CGRectMake(240, 55, 40, 15)];
    [lable_nine setFont:[UIFont fontWithName:@"HelveticaNeue" size:14]];
    //lable_nine.textAlignment = NSTextAlignmentCenter;
    lable_nine.textColor =[UIColor orangeColor];
    lable_nine.text = @"327";
    [view addSubview:lable_nine];
    return self;
}
-(void)login{
//    [[NSNotificationCenter defaultCenter]postNotificationName:@"present" object:nil];
    
}
@end
