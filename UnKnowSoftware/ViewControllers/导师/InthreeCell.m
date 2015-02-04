//
//  InthreeCell.m
//  waibao
//
//  Created by 小小程序员 on 15/2/4.
//  Copyright (c) 2015年 小小程序员. All rights reserved.
//

#import "InthreeCell.h"

@implementation InthreeCell
@synthesize view;
@synthesize view_one;
@synthesize one;
@synthesize two;
@synthesize three;
@synthesize four;
@synthesize five;
@synthesize six;
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
        view = [[UIView alloc]initWithFrame:CGRectMake(5, 0, self.contentView.frame.size.width - 10, 110)];
        view.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:view];
        
        view_one = [[UIView alloc]initWithFrame:CGRectMake(10, 10, view.frame.size.width - 20, 60)];
        view_one.backgroundColor = [UIColor whiteColor];
        view_one.layer.masksToBounds = YES;
        view_one.layer.cornerRadius = 8;
        [view addSubview:view_one];
        
        one = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, view_one.frame.size.width/2 - 20, 35)];
        one.textColor = [UIColor whiteColor];
        one.backgroundColor = [UIColor colorWithRed:166.0/255 green:190.0/255 blue:210.0/255 alpha:1];
        [one setFont:[UIFont fontWithName:@"HelveticaNeue" size:13]];
        one.textAlignment = NSTextAlignmentCenter;
        one.layer.borderWidth = 0.5;
        [view_one addSubview:one];
        
        two = [[UILabel alloc]initWithFrame:CGRectMake(one.frame.size.width, 0, view_one.frame.size.width - one.frame.size.width, 35)];
        two.textColor = [UIColor whiteColor];
        two.backgroundColor = [UIColor colorWithRed:166.0/255 green:190.0/255 blue:210.0/255 alpha:1];
        two.textAlignment = NSTextAlignmentCenter;
        [two setFont:[UIFont fontWithName:@"HelveticaNeue" size:13]];
        two.layer.borderWidth = 0.5;
        [view_one addSubview:two];
        
        three = [[UILabel alloc]initWithFrame:CGRectMake(0, 35, view_one.frame.size.width/2 - 20, 25)];
        three.textColor = [UIColor colorWithRed:55.0/255 green:139.0/255 blue:224.0/255 alpha:1];
        [three setFont:[UIFont fontWithName:@"HelveticaNeue" size:17]];
        three.textAlignment = NSTextAlignmentCenter;
        three.layer.borderWidth = 0.5;
        
        four = [[UILabel alloc]initWithFrame:CGRectMake(one.frame.size.width, 35, view_one.frame.size.width - three.frame.size.width, 25)];
        [four setFont:[UIFont fontWithName:@"HelveticaNeue" size:17]];
        four.textColor = [UIColor orangeColor];
        four.textAlignment = NSTextAlignmentCenter;
        four.layer.borderWidth = 0.5;
        [view_one addSubview:three];
        [view_one addSubview:four];
        
        five = [[UILabel alloc]initWithFrame:CGRectMake(10, 90, 2, 15)];
        five.backgroundColor = [UIColor orangeColor];
        [view addSubview:five];
        
        six = [[UILabel alloc]initWithFrame:CGRectMake(20, 90, 70, 15)];
        [six setFont:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14]];
        [view addSubview:six];
    }
    return self;
}
@end
