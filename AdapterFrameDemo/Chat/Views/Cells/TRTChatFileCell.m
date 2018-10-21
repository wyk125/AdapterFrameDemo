//
//  TRTChatFileCell.m
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import "TRTChatFileCell.h"

@interface TRTChatFileCell ()

@property (nonatomic, strong) UILabel *labelTitle;     //!<标题

@end

@implementation TRTChatFileCell

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
    return 40;
}

#pragma mark- Public Methods
- (void)refreshCellWithModel:(TRTChatFileCellModel *)modelCell
{
    _labelTitle.text = modelCell.fileName;
    self.userIcon.image = [UIImage imageNamed:@"right_user"];
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
        make.right.equalTo(self).offset(-15);
        make.width.height.mas_equalTo(30);
    }];
}

- (void)makeLabelTitle
{
    _labelTitle = [[UILabel alloc] initWithFrame:CGRectNull];
    _labelTitle.backgroundColor = UIColor.whiteColor;
    _labelTitle.textColor = UIColor.redColor;
    _labelTitle.textAlignment = NSTextAlignmentRight;
}

@end
