//
//  ProjectViewController.m
//  UnKnowSoftware
//
//  Created by 赵中良 on 15/1/30.
//  Copyright (c) 2015年 com.iuiue. All rights reserved.
//

#import "ProjectViewController.h"
#import "RDVTabBarController.h"
#import "shaixuanTableView.h"

@interface ProjectViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    shaixuanTableView *view;
}

@end

@implementation ProjectViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    view = [[shaixuanTableView alloc]initWithFrame:CGRectMake(0, 64, 160, 568)];
    view.backgroundColor = [UIColor blackColor];
    view.TypeArr = @[@"推荐",@"全部方向",@"电子商务",@"移动互联网"];
    [self.view addSubview:view];
    view.hidden = YES;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)choseType:(id)sender {
    UIBarButtonItem *item = (UIBarButtonItem *)sender;
    if (view.hidden == NO) {
        
        item.image = [UIImage imageNamed:@"6"];
        view.hidden = YES;
    }
    else{
        view.hidden = NO;
        item.image = [UIImage imageNamed:@"5"];
    }
   
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 10;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell;
    switch (indexPath.row) {
        case 0:
            cell = [tableView dequeueReusableCellWithIdentifier:@"_chuangye_One"];
            break;
        
        default:
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Default"];
            break;
    }
    return cell;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:
            return 150;
            break;
        case 1:
            return 30;
            break;
            
        default:
            break;
    }
    return 30;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 15;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFootderInSection:(NSInteger)section{
    return 5;
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
