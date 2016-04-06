//
//  PHIconView.h
//  iconsViewDemo
//
//  Created by Y杨定甲 on 16/4/6.
//  Copyright © 2016年 damai. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PHIconView;
@protocol IconsViewDelegate <NSObject>

- (void)iconsDidselectBtnAtindex:(NSInteger)index;

@end


@interface PHIconView : UIView
@property (strong, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UILabel *iconName;
@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UIButton *iconBtn;

@property (weak, nonatomic) id <IconsViewDelegate>delegate;
@end
