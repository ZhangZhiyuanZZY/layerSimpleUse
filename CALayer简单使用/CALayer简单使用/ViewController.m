//
//  ViewController.m
//  CALayer简单使用
//
//  Created by 章芝源 on 16/1/9.
//  Copyright © 2016年 ZZY. All rights reserved.
//

#import "ViewController.h"
// 自动装箱,把基本类型的数据转换成对象
//define this constant if you want to enable auto-boxing for default syntax
#define MAS_SHORTHAND_GLOBALS

//预编译可以不写前缀msa_
//define this constant if you want to use Masonry without the 'mas_' prefix
#define MAS_SHORTHAND

#import <Masonry.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //设置UI
//    [self setupUI];
    [self shadow];

}

- (void)setupUI
{
    UIImageView *imageView = [[UIImageView alloc]init];
    imageView.image = [UIImage imageNamed:@"普京"];
    [self.view addSubview:imageView];
//    把主成切成一个圆
    imageView.layer.cornerRadius = 100;
//    把超出主层的部分裁剪掉
    imageView.layer.masksToBounds = YES;
    
//    为这个圆添加圆环
    imageView.layer.borderWidth = 5;
    imageView.layer.borderColor = [UIColor yellowColor].CGColor;
    
    
}

- (void)shadow
{
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    view.layer.cornerRadius = 100;
    //设置发光效果
    view.layer.shadowOpacity = 1;//阴影可见
    view.layer.shadowColor = [UIColor yellowColor].CGColor;
    view.layer.shadowRadius = 50;
    view.layer.shadowOffset = CGSizeMake(-20, -20);
    
    [view makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.height.width.equalTo(200);
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
