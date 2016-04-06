//
//  PHIconView.m
//  iconsViewDemo
//
//  Created by Y杨定甲 on 16/4/6.
//  Copyright © 2016年 damai. All rights reserved.
//

#import "PHIconView.h"

@implementation PHIconView

-(void)awakeFromNib {
    
    [[NSBundle mainBundle] loadNibNamed:@"PHIconView" owner:self options:nil];
    self.contentView.frame = self.frame;
    [self addSubview: self.contentView];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        [[NSBundle mainBundle] loadNibNamed:@"PHIconView" owner:self options:nil];
        self.contentView.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
        
        [self addSubview: self.contentView];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder])
    {
        [[NSBundle mainBundle] loadNibNamed:@"PHIconView" owner:self options:nil];
        [self addSubview: self.contentView];
        
    }
    return self;
}


- (IBAction)iconClick:(UIButton *)sender {
    if ([self.delegate respondsToSelector:@selector(iconsDidselectBtnAtindex:)]) {
        [self.delegate iconsDidselectBtnAtindex:sender.tag];
    }
}

@end
