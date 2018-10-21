//
//  TRTChatTextCell.m
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import "TRTChatTextCell.h"

@interface TRTChatTextCell ()

@property (nonatomic, strong) UILabel *labelTitle;     //!<标题

@end

@implementation TRTChatTextCell

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
    return 50;
}

#pragma mark- Public Methods
- (void)refreshCellWithModel:(TRTChatTextCellModel *)modelCell
{
    _labelTitle.text = modelCell.text;
    
    self.userIcon.image = [UIImage imageNamed:@"left_user"];
}

- (void)createSubviews
{
    [self makeLabelTitle];
    [self addSubview:_labelTitle];
    [_labelTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
        make.width.equalTo(self).multipliedBy(0.7);
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
    _labelTitle = [[UILabel alloc] initWithFrame:CGRectNull];
    _labelTitle.backgroundColor = UIColor.whiteColor;
    _labelTitle.textColor = UIColor.purpleColor;
    _labelTitle.textAlignment = NSTextAlignmentLeft;
}


@end
