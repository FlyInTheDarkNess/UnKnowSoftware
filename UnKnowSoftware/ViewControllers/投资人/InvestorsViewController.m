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

@interface InvestorsViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *touzirenTableView;

@end

@implementation InvestorsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.navigationItem.title = @"投资人";
    
    [_touzirenTableView registerClass:[InvestorsCell class] forCellReuseIdentifier:@"CELL"];
    
    _touzirenTableView.separatorStyle = UITableViewCellSeparatorStyleNone;

    
    // Do any additional setup after loading the view.
}
-(void)pre{
    ZhuceViewController *zhuce = [[ZhuceViewController alloc]init];
    [self presentViewController:zhuce animated:YES completion:nil];
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
//    InvestordetaiViewController *inves = [[InvestordetaiViewController alloc]init];
//    [self.navigationController pushViewController:inves animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
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
