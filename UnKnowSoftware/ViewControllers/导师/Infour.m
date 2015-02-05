//
//  Infour.m
//  waibao
//
//  Created by 小小程序员 on 15/2/4.
//  Copyright (c) 2015年 小小程序员. All rights reserved.
//

#import "Infour.h"

@implementation Infour
@synthesize image;
@synthesize lable;
@synthesize lable_content;
@synthesize view;
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
        view = [[UIView alloc]initWithFrame:CGRectMake(5, 0, r.size.width - 10, 100)];
        view.layer.borderWidth = 0.5;
        view.layer.borderColor = [UIColor groupTableViewBackgroundColor].CGColor;
        view.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:view];
        
        image = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 40, 40)];
        [view addSubview:image];
        
        lable = [[UILabel alloc]initWithFrame:CGRectMake(60, 10, 70, 20)];
        [lable setFont:[UIFont fontWithName:@"HelveticaNeue" size:16]];
        [view addSubview:lable];
        
        lable_content= [[UILabel alloc]initWithFrame:CGRectMake(60, 40, self.contentView.frame.size.width - 70, 20)];
        [lable_content setFont:[UIFont fontWithName:@"HelveticaNeue" size:13]];
        [view addSubview:lable_content];
    }
    return self;
}
@end
