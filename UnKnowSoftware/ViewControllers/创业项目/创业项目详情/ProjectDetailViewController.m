//
//  ProjectDetailViewController.m
//  UnKnowSoftware
//
//  Created by 赵中良 on 15/2/4.
//  Copyright (c) 2015年 com.iuiue. All rights reserved.
//

#import "ProjectDetailViewController.h"
#import "RDVTabBarController.h"


@interface ProjectDetailViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *projectDetailTableView;

@end

@implementation ProjectDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
   
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell;
    switch (indexPath.section) {
        case 0:
            cell = [tableView dequeueReusableCellWithIdentifier:@"_project_detail_one"];
            break;
        case 1:
            cell = [tableView dequeueReusableCellWithIdentifier:@"_project_detail_three"];
            break;
        case 2:
            cell = [tableView dequeueReusableCellWithIdentifier:@"_project_detail_four"];
            break;
        case 3:
            cell = [tableView dequeueReusableCellWithIdentifier:@"_project_detail_five"];
            break;
        default:
            break;
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.section) {
        case 0:
            return 120;
            break;
        case 1:
            return 130;
            break;
        case 2:
            return 196;
            break;
        case 3:
            return 94;
            break;
            
        default:
            break;
    }
    return 44;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UITableViewCell *cell;
    if (section > 0 && section < 4) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"_project_detail_two"];
    }else{
        cell = [[UITableViewCell alloc]init];
        cell.backgroundColor = [UIColor whiteColor];
    }
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UITableViewCell *cell;
    cell = [[UITableViewCell alloc]init];
    cell.backgroundColor = [UIColor whiteColor];
    return cell;
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
