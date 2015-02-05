//
//  huodongDetailViewController.m
//  UnKnowSoftware
//
//  Created by 赵中良 on 15/2/4.
//  Copyright (c) 2015年 com.iuiue. All rights reserved.
//

#import "huodongDetailViewController.h"
#import "NSString+Extension.h"
#import "RDVTabBarController.h"
#import "TalkViewController.h"

@interface huodongDetailViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation huodongDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell;
    switch (indexPath.row) {
        case 0:
            cell = [tableView dequeueReusableCellWithIdentifier:@"_huodong_detail_one"];
            break;
        case 1:{
            if (!cell) {
                cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"demoCell"];
            }
            cell.textLabel.text = @"\t问：据报道，3日，伊朗议会同意审议涉伊核问题新法案草案。该草案称，如美对伊实施新制裁，伊应立即取消核问题临时协议，重启所有铀浓缩活动，加快阿拉克重水反应堆建设。中方对此有何评论？\n\t答：早日解决伊朗核问题，将对中东地区的安全形势产生深远的积极影响。当前，六国与伊朗正在加紧谈判解决伊核问题的全面协议。我们希望有关各方珍视和维护来之不易的谈判势头，坚持前一阶段谈判所达共识，聚焦并弥合分歧，及早作出政治决断，争取早日达成互利共赢的全面协议。中方愿与各方共同努力，继续为推动对话谈判进程发挥建设性作用。/n/t问：据报道，关于反盗猎问题的国际会议正在尼泊尔加德满都召开。有与会专家称，中国对老虎制品的需求增加导致野生虎数量锐减，破坏各方为保护野生虎所作努力。中方对此有何回应？\n\t答：据了解，目前尼泊尔正在召开有关“对盗猎零容忍”国际研讨会，中国国家林业局已派员参加该研讨会并在会上介绍中方开展的相关工作。";
            cell.textLabel.font = [UIFont systemFontOfSize:14];
            CGSize size = [cell.textLabel.text sizeWithFont:[UIFont systemFontOfSize:13] maxSize:CGSizeMake(300, 100000)];
            cell.textLabel.numberOfLines = 0;
            [cell setFrame:CGRectMake(0, 0, size.width, size.height)];
        }
            
        default:
            break;
    }
    return cell;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell;
    switch (indexPath.row) {
        case 0:
            
            return 140;
            break;
        case 1:{
            if (!cell) {
                cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"demoCell"];
            }
            cell.textLabel.text = @"\t问：据报道，3日，伊朗议会同意审议涉伊核问题新法案草案。该草案称，如美对伊实施新制裁，伊应立即取消核问题临时协议，重启所有铀浓缩活动，加快阿拉克重水反应堆建设。中方对此有何评论？\n\t答：早日解决伊朗核问题，将对中东地区的安全形势产生深远的积极影响。当前，六国与伊朗正在加紧谈判解决伊核问题的全面协议。我们希望有关各方珍视和维护来之不易的谈判势头，坚持前一阶段谈判所达共识，聚焦并弥合分歧，及早作出政治决断，争取早日达成互利共赢的全面协议。中方愿与各方共同努力，继续为推动对话谈判进程发挥建设性作用。/n/t问：据报道，关于反盗猎问题的国际会议正在尼泊尔加德满都召开。有与会专家称，中国对老虎制品的需求增加导致野生虎数量锐减，破坏各方为保护野生虎所作努力。中方对此有何回应？\n\t答：据了解，目前尼泊尔正在召开有关“对盗猎零容忍”国际研讨会，中国国家林业局已派员参加该研讨会并在会上介绍中方开展的相关工作。";
            cell.textLabel.font = [UIFont systemFontOfSize:14];
            CGSize size = [cell.textLabel.text sizeWithFont:[UIFont systemFontOfSize:14] maxSize:CGSizeMake(300, 100000)];
            [cell setFrame:CGRectMake(0, 0, size.width, size.height + 60)];
            return cell.frame.size.height;
        }
        default:
            break;
    }
    return 44;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UITableViewCell *cell;
    cell = [tableView dequeueReusableCellWithIdentifier:@"_huodong_detail_two"];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 75;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [[self rdv_tabBarController] setTabBarHidden:YES animated:YES];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
//    [[self rdv_tabBarController] setTabBarHidden:NO animated:YES];
}

- (IBAction)huodongIn:(id)sender {
    TalkViewController *talkVC = [[TalkViewController alloc]init];
    talkVC.title = @"参加活动";
    [self.navigationController pushViewController:talkVC animated:YES];
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
