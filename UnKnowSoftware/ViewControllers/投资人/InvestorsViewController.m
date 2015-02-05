//
//  InvestorsViewController.m
//  waibao
//
//  Created by 小小程序员 on 15/2/2.
//  Copyright (c) 2015年 小小程序员. All rights reserved.
//

#import "InvestorsViewController.h"
#import "ZhuceViewController.h"
#import "InvestorsCell.h"
#import "InvestordetaiViewController.h"
#import "TalkViewController.h"
#import "shaixuanTableView.h"
#import "RDVTabBarController.h"

@interface InvestorsViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    shaixuanTableView *view;
}
@property (weak, nonatomic) IBOutlet UITableView *touzirenTableView;

@end

@implementation InvestorsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.navigationItem.title = @"投资人";
    
    [_touzirenTableView registerClass:[InvestorsCell class] forCellReuseIdentifier:@"CELL"];
    _touzirenTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    view = [[shaixuanTableView alloc]initWithFrame:CGRectMake(0, 64, 160, [UIScreen mainScreen].bounds.size.height)];
    view.backgroundColor = [UIColor blackColor];
    view.TypeArr = @[@"推荐",@"全部方向",@"电子商务",@"移动互联网"];
    [self.view addSubview:view];
    view.hidden = YES;
    
    // Do any additional setup after loading the view.
}
-(void)pre{
    ZhuceViewController *zhuce = [[ZhuceViewController alloc]init];
    [self presentViewController:zhuce animated:YES completion:nil];
}
- (IBAction)shaixuan:(id)sender {
    
    UIBarButtonItem *item = (UIBarButtonItem *)sender;
    if (view.hidden == NO) {
        
        item.image = [UIImage imageNamed:@"5"];
        view.hidden = YES;
    }
    else{
        view.hidden = NO;
        item.image = [UIImage imageNamed:@"6"];
    }

}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    InvestorsCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELL"];
    cell.head_image.image = [UIImage imageNamed:@"0.jpg"];
    cell.head_image.layer.masksToBounds = YES;
    cell.head_image.layer.cornerRadius = 5;
    cell.lable_one.text = @"赵忠良";
    cell.lable_two.text = @"投资项目:";
    cell.lable_three.text = @"粉丝数量:";
    cell.lable_four.text = @"查看项目:";
    cell.lable_five.text = @"投资领域:移动互联网  教育  文化  艺术  体育";
    [cell.button addTarget:self action:@selector(log) forControlEvents:UIControlEventTouchUpInside];
    return cell;
}
-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    cell.backgroundColor = [UIColor groupTableViewBackgroundColor];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 165;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    InvestordetaiViewController *inves = [[InvestordetaiViewController alloc]init];
    [self.navigationController pushViewController:inves animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)log{
    TalkViewController *talk = [[TalkViewController alloc]init];
    [self.navigationController pushViewController:talk animated:YES];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [[self rdv_tabBarController] setTabBarHidden:NO animated:YES];
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
