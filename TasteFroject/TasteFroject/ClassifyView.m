//
//  ClassifyView.m
//  TasteFroject
//
//  Created by mac- t4 on 15/12/18.
//  Copyright (c) 2015年 上海科文麦格里实业有限公司. All rights reserved.
//

#import "ClassifyView.h"

@implementation ClassifyView

- (id)initWithFrame:(CGRect)frame{
    if ([super initWithFrame:frame]) {
        self.classifyImageView = [UIImageView new];
        [self addSubview:_classifyImageView];
        
        self.layer.borderColor = [UIColor lightGrayColor].CGColor;
        self.layer.borderWidth = 0.2;
        
        self.titleLB = [UILabel new];
        _titleLB.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_titleLB];
        
        
        [_classifyImageView mas_makeConstraints:^(MASConstraintMaker *make){
            make.top.and.left.and.right.equalTo(self).with.offset(0);
            make.bottom.equalTo(_titleLB.mas_top).with.offset(0);
        }];
        
        [_titleLB mas_makeConstraints:^(MASConstraintMaker *make){
            make.left.and.right.and.bottom.equalTo(self).with.offset(0);
            make.height.mas_equalTo(@20);
        }];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
