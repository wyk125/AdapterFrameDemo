//
//  TRTChatTimeCell.m
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import "TRTChatTimeCell.h"

@interface TRTChatTimeCell ()

@property (nonatomic, strong) UILabel *labelTitle;     //!<标题

@end

@implementation TRTChatTimeCell

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
    return 30;
}

#pragma mark- Public Methods
- (void)refreshCellWithModel:(TRTChatTimeCellModel *)modelCell
{
    _labelTitle.text = modelCell.timeString;
}

- (void)createSubviews
{
    [self makeLabelTitle];
    [self addSubview:_labelTitle];
    [_labelTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
        make.width.equalTo(self);
    }];
}

- (void)makeLabelTitle
{
    _labelTitle = [[UILabel alloc] initWithFrame:CGRectNull];
    _labelTitle.backgroundColor = UIColor.whiteColor;
    _labelTitle.textAlignment = NSTextAlignmentCenter;
}

@end
