//
//  ChoseNavigationController.m
//  UnKnowSoftware
//
//  Created by 赵中良 on 15/2/2.
//  Copyright (c) 2015年 com.iuiue. All rights reserved.
//

#import "ChoseNavigationController.h"
#import "Constants.h"

@interface ChoseNavigationController ()
{
    UIView *screeningView;
}

@end

@implementation ChoseNavigationController

-(void)showScreeningView{
    screeningView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, MY_WIDTH/3, MY_HEIGHT)];
    screeningView.backgroundColor = [UIColor greenColor];
    [self.navigationBar addSubview:screeningView];
}

-(void)hidenScreeningView{
    [screeningView removeFromSuperview];
}



@end
