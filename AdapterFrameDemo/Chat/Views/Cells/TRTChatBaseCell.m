//
//  TRTChatBaseCell.m
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import "TRTChatBaseCell.h"

@implementation TRTChatBaseCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style
              reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
//        self.backgroundColor = RandColor;
    }
    return self;
}

- (CGFloat)getHeightOfCell
{
    return 0;
}

- (void)refreshCellWithModel:(TRTChatCellBaseModel *)modelCell
{
    //默认实现为空/提示设置子类方法
    NSLog(@"请实现cell实例的UI装配方法");
}

- (UIImageView *)userIcon
{
    if (!_userIcon) {
        _userIcon = [[UIImageView alloc] init];
    }
    return _userIcon;
}

@end
