//
//  TeachCell.m
//  waibao
//
//  Created by 小小程序员 on 15/2/4.
//  Copyright (c) 2015年 小小程序员. All rights reserved.
//

#import "TeachCell.h"
#define WIDTH (self.contentView.frame.size.width)
@implementation TeachCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        CGRect r = [UIScreen mainScreen].bounds;
        self.view = [[UIView alloc]initWithFrame:CGRectMake(5, 10, r.size.width - 10, 190)];
        self.view.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:self.view];
        
        self.image = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 60, 70)];
        [self.view addSubview:self.image];
        
        self.lableone = [[UILabel alloc]initWithFrame:CGRectMake(80, 10, 60, 20)];
        [self.lableone setFont:[UIFont fontWithName:@"HelveticaNeue" size:17]];
        [self.view addSubview:self.lableone];
        
        self.labletwo = [[UILabel alloc]initWithFrame:CGRectMake(80, 30, self.view.frame.size.width - 80, 10)];
        [self.labletwo setFont:[UIFont fontWithName:@"HelveticaNeue" size:13]];
        [self.view addSubview:self.labletwo];
        
        self.lablethree = [[UILabel alloc]initWithFrame:CGRectMake(80, 60, 60, 20)];
        self.lablethree.backgroundColor = [UIColor colorWithRed:123.0/255 green:162.0/255 blue:207.0/255 alpha:1];
        self.lablethree.textAlignment = NSTextAlignmentCenter;
        self.lablethree.layer.masksToBounds = YES;
        self.lablethree.layer.cornerRadius = 3;
        self.lablethree.textColor = [UIColor whiteColor];
        [self.lablethree setFont:[UIFont fontWithName:@"HelveticaNeue" size:14]];
        [self.view addSubview:self.lablethree];
        
        self.lablefour = [[UILabel alloc]initWithFrame:CGRectMake(150, 60, 60, 20)];
        self.lablefour.backgroundColor = [UIColor colorWithRed:239.0/255 green:160.0/255 blue:162.0/255 alpha:1];
        self.lablefour.textAlignment = NSTextAlignmentCenter;
        self.lablefour.layer.masksToBounds = YES;
        self.lablefour.layer.cornerRadius = 3;
        self.lablefour.textColor = [UIColor whiteColor];
        [self.lablefour setFont:[UIFont fontWithName:@"HelveticaNeue" size:14]];
        [self.view addSubview:self.lablefour];
        
        self.view_one = [[UIView alloc]initWithFrame:CGRectMake(0, 100, r.size.width - 10, 30)];
        self.view_one.backgroundColor = [UIColor groupTableViewBackgroundColor];
        [self.view addSubview:self.view_one];
        
        self.lablefive = [[UILabel alloc]initWithFrame:CGRectMake(self.view_one.frame.size.width/2 - 140, 0, 100, 30)];
       self.lablefive.text = @"查看项目数:";
        [self.view_one addSubview:self.lablefive];
        
        self.lablesix = [[UILabel alloc]initWithFrame:CGRectMake(self.view_one.frame.size.width/2 - 40, 0, 40, 30)];
        self.lablesix.text = @"34";
        self.lablesix.textColor = [UIColor orangeColor];
        [self.view_one addSubview:self.lablesix];
        
        self.lableseven = [[UILabel alloc]initWithFrame:CGRectMake(self.view_one.frame.size.width/2, 0, 100, 30)];
        self.lableseven.text = @"约谈项目数:";
        [self.view_one addSubview:self.lableseven];
        
        self.lablenine = [[UILabel alloc]initWithFrame:CGRectMake(self.view_one.frame.size.width/2 + 100, 0, 40, 30)];
        self.lablenine.text = @"34";
        self.lablenine.textColor = [UIColor orangeColor];
        [self.view_one addSubview:self.lablenine];
        
        self.lable_line = [[UILabel alloc]initWithFrame:CGRectMake(5, 170, 2, 15)];
        self.lable_line.backgroundColor = [UIColor orangeColor];
        [self.view addSubview:self.lable_line];
        
        self.our = [[UILabel alloc]initWithFrame:CGRectMake(15, 170, 70, 17)];
        [self.our setFont:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14]];
        self.our.text = @"导师简介";
        [self.view addSubview:self.our];

    }
    return self;
}

@end
