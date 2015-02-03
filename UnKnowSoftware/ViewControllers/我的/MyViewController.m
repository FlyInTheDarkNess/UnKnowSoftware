//
//  MyViewController.m
//  UnKnowSoftware
//
//  Created by 赵中良 on 15/1/30.
//  Copyright (c) 2015年 com.iuiue. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()<UITableViewDataSource,UITableViewDelegate>
{

}

@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
//    UIBarButtonItem *item = 
    

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)outOfLogin:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return 1;
            break;
        case 1:
            return 6;
            break;
        default:
            return 0;
            break;
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell;
    switch (indexPath.section) {
        case 0:
        {
            cell = [tableView dequeueReusableCellWithIdentifier:@"caizhi_MyCell_One"];
            UIImageView *imV = (UIImageView *)[cell viewWithTag:1];
            [imV setImage:[UIImage imageNamed:@"demo_touxiang"]];
            UIImageView *backImgV = (UIImageView *)[cell viewWithTag:2];
            [backImgV setImage:[UIImage imageNamed:@"MY_Image_BackGround"]];
            
            /*
             *设置image圆角边框
             */
            CALayer * downButtonLayer = [imV layer];
            [downButtonLayer setMasksToBounds:YES];
            [downButtonLayer setCornerRadius:10.0];
            [downButtonLayer setBorderWidth:3.0];
            [downButtonLayer setBorderColor:[[UIColor colorWithRed:82.0f/255.0f green:121.0f/255.0f blue:134.0f/255.0f alpha:1] CGColor]];
        }
            break;
        case 1:
            if (!cell) {
                cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ModeCell"];
            }
            switch (indexPath.row) {
                case 0:
                    cell.imageView.image = [UIImage imageNamed:@"MY_Image_Dongtai"];
                    cell.textLabel.text = @"项目动态";
                    break;
                case 1:
                    cell.imageView.image = [UIImage imageNamed:@"MY_Image_Guanzhu"];
                    cell.textLabel.text = @"关注";
                    break;
                case 2:
                    cell.imageView.image = [UIImage imageNamed:@"MY_Image_Fuwu"];
                    cell.textLabel.text = @"服务";
                    break;
                case 3:
                    cell.imageView.image = [UIImage imageNamed:@"MY_Image_Sixin"];
                    cell.textLabel.text = @"私信";
                    break;
                case 4:
                    cell.imageView.image = [UIImage imageNamed:@"MY_Image_Setting"];
                    cell.textLabel.text = @"设置";
                    break;
                case 5:
                    cell.imageView.image = [UIImage imageNamed:@"MY_Image_Guanyu"];
                    cell.textLabel.text = @"关于";
                    break;
                    
                    
                default:
                    break;
            }
            
            
            break;

            
        default:
            break;
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.section) {
        case 0:
            return 70;
            break;
            
        default:
            return 44;
            break;
    }
    return 0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    /*
     * tableView 点击后还原
     */
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    
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
