//
//  TeachdetailViewController.m
//  waibao
//
//  Created by 小小程序员 on 15/2/4.
//  Copyright (c) 2015年 小小程序员. All rights reserved.
//

#import "TeachdetailViewController.h"
#import "TeachCell.h"
#import "InthreeCell.h"
#import "Infour.h"
#import "TijiaoViewController.h"
#import "RDVTabBarController.h"
#import "shaixuanTableView.h"
@interface TeachdetailViewController ()<UITableViewDataSource,UITableViewDelegate>{
    UITableView *tableview;
    shaixuanTableView *Tview;
    
//    UIButton *nav_button;
}


@end

@implementation TeachdetailViewController

#define WIDTH (self.view.frame.size.width)
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"投资人详情";
    tableview = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
    tableview.delegate = self;
    tableview.dataSource =self;
    tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:tableview];
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0,self.view.frame.size.height - 50 , self.view.frame.size.width, 50)];
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
    
    UIButton *but = [[UIButton alloc]initWithFrame:CGRectMake(10, 10, 70, 30)];
    [view addSubview:but];
    but.backgroundColor = [UIColor colorWithRed:55.0/255 green:139.0/255 blue:224.0/255 alpha:1];
    [but setTitle:@"提交项目" forState:UIControlStateNormal];
    but.layer.masksToBounds = YES;
    but.layer.cornerRadius = 5;
    [but addTarget:self action:@selector(tijiao) forControlEvents:UIControlEventTouchUpInside];
    [but.titleLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Bold" size:13]];
    
    UIButton *butt = [[UIButton alloc]initWithFrame:CGRectMake(90, 10, 70, 30)];
    [view addSubview:butt];
    butt.backgroundColor = [UIColor colorWithRed:55.0/255 green:139.0/255 blue:224.0/255 alpha:1];
    [butt setTitle:@"行业资讯" forState:UIControlStateNormal];
    butt.layer.masksToBounds = YES;
    butt.layer.cornerRadius = 5;
    [butt.titleLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Bold" size:13]];
    
    UIButton *buttt = [[UIButton alloc]initWithFrame:CGRectMake(WIDTH - 80, 10, 20, 20)];
    [view addSubview:buttt];
    [buttt setBackgroundImage:[UIImage imageNamed:@"xing"] forState:UIControlStateNormal];
    UILabel *ee = [[UILabel alloc]initWithFrame:CGRectMake(WIDTH - 80, 30, 20, 10)];
    ee.text = @"关注";
    ee.alpha = 0.6;
    [ee setFont:[UIFont fontWithName:@"HelveticaNeue-Bold" size:10]];
    [view addSubview:ee];
    
    buttt.layer.masksToBounds = YES;
    buttt.layer.cornerRadius = 5;
    [buttt.titleLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Bold" size:13]];
    
    UIButton *butttt = [[UIButton alloc]initWithFrame:CGRectMake(WIDTH - 40, 10, 20, 20)];
    [butttt setBackgroundImage:[UIImage imageNamed:@"zan"] forState:UIControlStateNormal];
    [view addSubview:butttt];
    UILabel *RR = [[UILabel alloc]initWithFrame:CGRectMake(WIDTH - 40, 30, 20, 10)];
    RR.textAlignment = NSTextAlignmentCenter;
    RR.text = @"赞";
    RR.alpha = 0.6;
    [RR setFont:[UIFont fontWithName:@"HelveticaNeue-Bold" size:10]];
    [view addSubview:RR];
    
    butttt.layer.masksToBounds = YES;
    butttt.layer.cornerRadius = 5;
    [butttt.titleLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Bold" size:13]];
    
    
    Tview = [[shaixuanTableView alloc]initWithFrame:CGRectMake(0, 64, 160, [UIScreen mainScreen].bounds.size.height)];
    Tview.backgroundColor = [UIColor blackColor];
    Tview.TypeArr = @[@"推荐",@"全部方向",@"电子商务",@"移动互联网"];
    [self.view addSubview:Tview];
    Tview.hidden = YES;
    
    //navi ____button
//    nav_button = [[UIButton alloc]initWithFrame:CGRectMake(WIDTH - 70, 10, 60, 30)];
//    [self.navigationController.navigationBar addSubview:nav_button];
//    
//    nav_button.layer.masksToBounds = YES;
//    nav_button.layer.cornerRadius = 5;
//    nav_button.layer.borderWidth = 0.5;
//    nav_button.layer.borderColor = [UIColor blueColor].CGColor;
//    [nav_button setTitle:@"同类活动" forState:UIControlStateNormal];
//    [nav_button.titleLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Bold" size:13]];
    // Do any additional setup after loading the view.
}

- (IBAction)choseType:(id)sender {
    UIBarButtonItem *item = (UIBarButtonItem *)sender;
    if (Tview.hidden == NO) {
        
        item.image = [UIImage imageNamed:@"5"];
        Tview.hidden = YES;
    }
    else{
        Tview.hidden = NO;
        item.image = [UIImage imageNamed:@"6"];
    }
    
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if(section == 0){
        return 1;
    }
    if(section == 1){
        return 1;
    }
    if(section == 2){
        return 1;
    }
    if(section == 3){
        return 1;
    }
    return 0;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 0){
        [tableview registerClass:[TeachCell class] forCellReuseIdentifier:@"Cellone"];
        TeachCell *cell = [tableview dequeueReusableCellWithIdentifier:@"Cellone"];
        cell.image.image = [UIImage imageNamed:@"0.jpg"];
        cell.lableone.text = @"赵忠良";
        cell.labletwo.text = @"石家庄-国大集---团董事--长董事长 冻柿子昂";
        cell.labletwo.numberOfLines = 2;
        [cell.labletwo sizeToFit];
        cell.lablethree.text = @"关注:234";
        cell.lablefour.text = @"粉丝:456";
        
        return cell;
    }
    if(indexPath.section == 1){
        UITableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:@"cell"];
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(5, 0, self.view.frame.size.width - 10, 110)];
        view.backgroundColor = [UIColor whiteColor];
        UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, view.frame.size.width- 20, 20)];
        lable.text = @"将卡手机打开链接阿莱克斯的距离喀什将卡圣诞节卡拉斯京打卡机是快乐的借口卡手机的空间阿斯科利大家快乐而个人给他人而过如果如果";
        lable.numberOfLines = 3;
        [lable sizeToFit];
        [lable setFont:[UIFont fontWithName:@"HelveticaNeue" size:14]];
        [cell addSubview:view];
        [cell addSubview:lable];
        
        UILabel *lable_line = [[UILabel alloc]initWithFrame:CGRectMake(10, 90, 2, 15)];
        lable_line.backgroundColor = [UIColor orangeColor];
        [cell addSubview:lable_line];
        UILabel *our = [[UILabel alloc]initWithFrame:CGRectMake(20, 90, 70, 15)];
        our.text = @"关注领域";
        [our setFont:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14]];
        [cell addSubview:our];
               return cell;
    }
    if(indexPath.section == 2){
        UITableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:@"cell"];
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(5, 0, self.view.frame.size.width - 10, 110)];
        view.backgroundColor = [UIColor whiteColor];
        for(int i = 0;i < 4;i ++){
            UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(5 + 70 *i + 5*i,10, 70, 30)];
            [view addSubview:lable];
            lable.text = @". 音乐领域";
            [lable setFont:[UIFont fontWithName:@"HelveticaNeue" size:14]];
        }
        [cell addSubview:view];
        UILabel *lable_line = [[UILabel alloc]initWithFrame:CGRectMake(10, 90, 2, 15)];
        lable_line.backgroundColor = [UIColor orangeColor];
        [cell addSubview:lable_line];
        UILabel *our = [[UILabel alloc]initWithFrame:CGRectMake(20, 90, 70, 15)];
        our.text = @"指导项目";
        [our setFont:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14]];
        [cell addSubview:our];
        return cell;
    }
    if(indexPath.section == 3){
        UITableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:@"cell"];
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(5, 0, self.view.frame.size.width - 10, 120)];
        view.backgroundColor = [UIColor whiteColor];
        for(int i = 0;i <3;i ++){
            UIView *vie = [[UIView alloc]initWithFrame:CGRectMake(10 +10*i+(view.frame.size.width-40)/3*i, 10, (view.frame.size.width-40)/3, 100)];
            //vie.backgroundColor = [UIColor groupTableViewBackgroundColor];
            vie.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"123"]];
            vie.layer.masksToBounds = YES;
            vie.layer.cornerRadius = 8;
            [view addSubview:vie];
        }
        [cell addSubview:view];
        return cell;
    }
    return nil;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 0){
        return 200;
    }
    if(indexPath.section == 1){
        return 110;
    }
    if(indexPath.section == 2){
        return 110;
    }
    if(indexPath.section == 3){
        return 120;
    }
    return 0;
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPat{
    cell.backgroundColor = [UIColor groupTableViewBackgroundColor];
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.1;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    if(section == 3){
        return 10;
    }else{
        return 1;
    }
    return 0;
}
-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    if(section == 0 || section == 1 ||section == 2){
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 1)];
        UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(5, 0, self.view.frame.size.width - 10, 1)];
        lable.backgroundColor = [UIColor colorWithRed:55.0/255 green:139.0/255 blue:224.0/255 alpha:1];
        [view addSubview:lable];
        return view;
    }
    return 0;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [[self rdv_tabBarController] setTabBarHidden:YES animated:YES];
}


-(void)tijiao{
    TijiaoViewController *tijiao = [[TijiaoViewController alloc]init];
    [self.navigationController pushViewController:tijiao animated:YES];
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
