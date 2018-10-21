//
//  TRTChatImageCell.m
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import "TRTChatImageCell.h"


@interface TRTChatImageCell ()

@property (nonatomic, strong) UIImageView *imageViewBanner;

@end

@implementation TRTChatImageCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createSubviews];
    }
    return self;
}

- (CGFloat)getHeightOfCell
{
    return 100;
}

#pragma mark- Public Methods
- (void)refreshCellWithModel:(TRTChatImageCellModel *)modelCell
{
    _imageViewBanner.image = [UIImage imageNamed:modelCell.imageName];
    
    self.userIcon.image = [UIImage imageNamed:@"left_user"];
}

- (void)createSubviews
{
    [self makeLabelTitle];
    [self addSubview:_imageViewBanner];
    [_imageViewBanner mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self);
        make.height.width.equalTo(self).multipliedBy(0.5);
        make.centerX.equalTo(self).multipliedBy(0.8);
    }];
    
    [self addSubview:self.userIcon];
    [self.userIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self);
        make.left.equalTo(self).offset(15);
        make.width.height.mas_equalTo(30);
    }];
}

- (void)makeLabelTitle
{
    _imageViewBanner = [[UIImageView alloc] initWithFrame:CGRectNull];
}

@end
