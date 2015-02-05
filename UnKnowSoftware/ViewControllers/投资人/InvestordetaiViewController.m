//
//  InvestordetaiViewController.m
//  waibao
//
//  Created by 小小程序员 on 15/2/3.
//  Copyright (c) 2015年 小小程序员. All rights reserved.
//

#import "InvestordetaiViewController.h"
#import "IndetailCell.h"
#import "InthreeCell.h"
#import "Infour.h"
#import "TijiaoViewController.h"
#import "RDVTabBarController.h"
@interface InvestordetaiViewController (){
    UITableView *tableview;
    //UIButton *nav_button;
}

@end

@implementation InvestordetaiViewController
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
    [but addTarget:self action:@selector(tijiao) forControlEvents:UIControlEventTouchUpInside];
    but.layer.masksToBounds = YES;
    but.layer.cornerRadius = 5;
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
        return 3;
    }
    return 0;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 0){
        [tableview registerClass:[IndetailCell class] forCellReuseIdentifier:@"Cellone"];
        IndetailCell *cell = [tableview dequeueReusableCellWithIdentifier:@"Cellone"];
        cell.image.image = [UIImage imageNamed:@"0.jpg"];
        cell.lableone.text = @"赵忠良";
        cell.labletwo.text = @"石家庄-国大集---团董事--长董事长 冻柿子昂";
        cell.labletwo.numberOfLines = 2;
        [cell.labletwo sizeToFit];
        cell.lablethree.text = @"关注:234";
        cell.lablefour.text = @"粉丝:456";
        cell.lablefive.text = @"上饭否水电费水电费说——阿萨德";
        cell.lablesix.text = @"中国健康和大家好健康和就看到凉快到家了空间 阿德和圣诞节凉快。阿娇肯定会说尽快哈等级考试 啊会计师的很快就回到家客户可考虑自己出口量较大时刻澜沧江";
        cell.lablesix.numberOfLines = 3;
        [cell.lablesix sizeToFit];
        cell.our.text = @"个人经历";
        return cell;
    }
    if(indexPath.section == 1){
        UITableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:@"Cell"];
        if(cell == nil){
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
            UIView *view = [[UIView alloc]initWithFrame:CGRectMake(5, 0, WIDTH - 10, 120)];
            view.backgroundColor = [UIColor whiteColor];
            [cell addSubview:view];
            for(int i = 0;i < 4;i ++){
                UIImageView *image = [[UIImageView alloc]initWithFrame:CGRectMake(5+5*i +(WIDTH-35)/4*i, 10, (WIDTH-35)/4, (WIDTH-35)/4)];
                image.layer.masksToBounds = YES;
                image.layer.cornerRadius = 8;
                image.image = [UIImage imageNamed:@"0.jpg"];
                [view addSubview:image];
            }
            UILabel *lable_line = [[UILabel alloc]initWithFrame:CGRectMake(10, 100, 2, 15)];
            lable_line.backgroundColor = [UIColor orangeColor];
            [view addSubview:lable_line];
            UILabel *lable_our = [[UILabel alloc]initWithFrame:CGRectMake(20, 100, 70, 15)];
            [lable_our setFont:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14]];
            lable_our.text = @"投资计划";
            [view addSubview:lable_our];
        }
        return cell;
    }
    if(indexPath.section == 2){
        [tableview registerClass:[InthreeCell class] forCellReuseIdentifier:@"Cell"];
        InthreeCell *cell = [tableview dequeueReusableCellWithIdentifier:@"Cell"];
        cell.one.text = @"一年内计划\n投资数";
        cell.one.numberOfLines = 2;
        cell.two.text = @"单个项目投资计划\n投资额度";
        cell.two.numberOfLines = 2;
        cell.three.text = @"10个";
        cell.four.text = @"10万-100万";
        cell.six.text = @"关注项目";
        return cell;
    }
    if(indexPath.section == 3){
        [tableview registerClass:[Infour class] forCellReuseIdentifier:@"Cell"];
        Infour *cell = [tableview dequeueReusableCellWithIdentifier:@"Cell"];
        cell.image.image = [UIImage imageNamed:@"0.jpg"];
        cell.lable.text = @"玩笑地";
        cell.lable_content.text = @"中国垃圾卡掉了垃圾卡掉了经理阿里看电视————就卡机的刻录机看见见识短看见刻录机教科书的刻录机，去武汉与健康和";
        cell.lable_content.numberOfLines = 4;
        [cell.lable_content sizeToFit];
        return cell;
    }
    return nil;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 0){
        return 200;
    }
    if(indexPath.section == 1){
        return 120;
    }
    if(indexPath.section == 2){
        return 110;
    }
    if(indexPath.section == 3){
        return 100;
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
