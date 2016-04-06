//
//  ViewController.m
//  iconsViewDemo
//
//  Created by Y杨定甲 on 16/4/6.
//  Copyright © 2016年 damai. All rights reserved.
//

#import "ViewController.h"
#import "PHIconView.h"
@interface ViewController ()<IconsViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *iconsView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    NSArray *imageArr = @[@"1.png",@"2.png",@"3.png",@"2.png",@"1.png"];
    NSArray *labelArr = @[@"图片1",@"图片2",@"图片3",@"图片2",@"图片1"];
    CGFloat count = 5;//假设服务器传回来5个icon
    
    CGFloat width = self.iconsView.frame.size.width/count;
    CGFloat height = self.iconsView.frame.size.height;
    for (int i = 0; i<count; i++) {
        PHIconView *icon = [[PHIconView alloc] init];
        icon.delegate = self;
        icon.iconBtn.tag = i + 100;
        icon.frame = CGRectMake(i*width, 0, width, height);
        icon.iconImageView.image = [UIImage imageNamed:[imageArr objectAtIndex:i]];
        icon.iconName.text = [labelArr objectAtIndex:i];
        [self.iconsView addSubview:icon];
    }
}

- (void)iconsDidselectBtnAtindex:(NSInteger)index{
    switch (index) {
        case 100:
            NSLog(@"第一个按钮");
            break;
        case 101:
            NSLog(@"第二个按钮");
            break;
        case 102:
            NSLog(@"第三个按钮");
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
