//
//  shaixuanTableView.m
//  UnKnowSoftware
//
//  Created by 赵中良 on 15/2/5.
//  Copyright (c) 2015年 com.iuiue. All rights reserved.
//

#import "shaixuanTableView.h"


@implementation shaixuanTableView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)setTypeArr:(NSArray *)TypeArr{
    _TypeArr = @[@"推荐",@"全部方向",@"电子商务",@"移动互联网"];
    self.tableFooterView = [[UIView alloc]init];
    self.scrollEnabled = NO;
    self.delegate = self;
    self.dataSource = self;
    _row = 0;
}

- (NSInteger)numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell * cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"tian"];
    cell.backgroundColor = [UIColor blackColor];
    cell.textLabel.text = _TypeArr[indexPath.row];
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.imageView.image = [UIImage imageNamed:@"image_unselect"];
    if (_row == indexPath.row) {
        cell.textLabel.textColor = [UIColor brownColor];
        cell.imageView.image = [UIImage imageNamed:@"image_select"];

    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    _row = indexPath.row;
    
    [self reloadData];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    [self removeFromSuperview];
    });
    
}

-(void)removeFromTableView{
    [self removeFromSuperview];
}


@end
