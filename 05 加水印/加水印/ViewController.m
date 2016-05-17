//
//  ViewController.m
//  加水印
//
//  Created by ZhuJiaCong on 16/4/16.
//  Copyright © 2016年 wxhl. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+WaterMask.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //读取原始图片
    UIImage *image = [UIImage imageNamed:@"pic.jpg"];
    
    //加水印
    image = [image addWaterMask];
    
    //显示在imageView
    _imageView.image = image;
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
