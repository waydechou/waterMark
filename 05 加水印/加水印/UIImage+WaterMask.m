//
//  UIImage+WaterMask.m
//  加水印
//
//  Created by ZhuJiaCong on 16/4/16.
//  Copyright © 2016年 wxhl. All rights reserved.
//

#import "UIImage+WaterMask.h"

@implementation UIImage (WaterMask)


- (UIImage *)addWaterMask {
    //读取需要添加上去的水印图片
    UIImage *waterMaskImage = [UIImage imageNamed:@"player_play@2x"];
    
    //开启图形上下文
    UIGraphicsBeginImageContext(self.size);
    
    //绘制原始图片
    [self drawAtPoint:CGPointZero];
    
    //绘制水印图片
    CGRect rect = CGRectMake(self.size.width - 400, self.size.height - 400, 360, 360);
    [waterMaskImage drawInRect:rect blendMode:kCGBlendModeNormal alpha:0.5];
    
    //从图形上下文中，获取绘制完成后的图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    return image;
}


@end
