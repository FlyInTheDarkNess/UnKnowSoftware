//
//  Constants.h
//  UnKnowSoftware
//
//  Created by 赵中良 on 15/2/2.
//  Copyright (c) 2015年 com.iuiue. All rights reserved.
//

#ifndef UnKnowSoftware_Constants_h
#define UnKnowSoftware_Constants_h

//判断是否高于ios8的版本
#define ios8 ([[[UIDevice currentDevice] systemVersion] floatValue]>=8.0?YES:NO)

//判断是否高于ios7的版本
#define ios7 ([[[UIDevice currentDevice] systemVersion] floatValue]>=7.0?YES:NO)

//判断是否为手机（pad）
#define iphone ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone?YES:NO)

#define MY_SCREEN ([UIScreen mainScreen].bounds)

#define MY_WIDTH (MY_SCREEN.size.width)

#define MY_HEIGHT (MY_SCREEN.size.height)



#endif
