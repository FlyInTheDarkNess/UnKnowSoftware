//
//  MTabbarController.m
//  UnKnowSoftware
//
//  Created by 赵中良 on 15/2/3.
//  Copyright (c) 2015年 com.iuiue. All rights reserved.
//

#import "MTabbarController.h"
#import <UIKit/UIKit.h>
#import "RDVTabBarItem.h"

@interface MTabbarController ()

@end

@implementation MTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    //自定义tabbar

    UINavigationController *nav1 =[[self storyboard] instantiateViewControllerWithIdentifier:@"caizhi_chuangye"];
    UINavigationController *nav2 = [[self storyboard] instantiateViewControllerWithIdentifier:@"caizhi_touzi"];
    UINavigationController *nav3 = [[self storyboard] instantiateViewControllerWithIdentifier:@"caizhi_daoshi"];
    UINavigationController *nav4 = [[self storyboard] instantiateViewControllerWithIdentifier:@"caizhi_huodong"];
    UINavigationController *nav5 = [[self storyboard] instantiateViewControllerWithIdentifier:@"caizhi_my"];
    
    [self setViewControllers:@[nav1, nav2,nav3,nav4,nav5]];
    UIImage *finishedImage = [UIImage imageNamed:@"tabbar_selected_background"];
    UIImage *unfinishedImage = [UIImage imageNamed:@"tabbar_normal_background"];
    NSArray *tabBarItemImages = @[@"chuangye", @"touziren", @"daoshi",@"huodong",@"wode"];
    
    NSInteger index = 0;
    for (RDVTabBarItem *itemm in [[self tabBar] items]) {
        [itemm setBackgroundSelectedImage:finishedImage withUnselectedImage:unfinishedImage];
        UIImage *selectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"tabbar_Image_%@",
                                                      [tabBarItemImages objectAtIndex:index]]];
        UIImage *unselectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"tabbar_Image_%@",
                                                        [tabBarItemImages objectAtIndex:index]]];
        [itemm setFinishedSelectedImage:selectedimage withFinishedUnselectedImage:unselectedimage];
        
        index++;
    }

    
    // Do any additional setup after loading the view.
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
