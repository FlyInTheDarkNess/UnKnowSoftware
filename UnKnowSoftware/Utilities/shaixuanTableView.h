//
//  shaixuanTableView.h
//  UnKnowSoftware
//
//  Created by 赵中良 on 15/2/5.
//  Copyright (c) 2015年 com.iuiue. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface shaixuanTableView : UITableView<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) NSArray *TypeArr;//筛选条件

@property (nonatomic,assign) NSInteger row;

-(void)removeFromTableView;

@end
