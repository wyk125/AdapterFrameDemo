//
//  TRTChatBaseCell.h
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Masonry.h"

#define RandColor [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1.0f];
#import "TRTChatCellBaseModel.h"

@interface TRTChatBaseCell : UITableViewCell

@property (nonatomic, strong) TRTChatCellBaseModel *modelItem; //!<在适配器里面给这个字段赋值
@property (nonatomic, strong) UITableView *tableViewOfCell;    //!<
@property (nonatomic, strong) UIImageView *userIcon;           //!<
//TODO:控制字段等等
@property (nonatomic, assign) BOOL isAfterReLayoutAndDecorate; //!<YES == 已经重新布局过了,用于适配器里面对cell重新布局和控件样式重定义时只执行一次
/**
 如果cell高度是固定的,可以在子类中通过这个方法返回,父类方法只会返回-1,
 外界会通过是否大于0来判断,如果>0那么直接使用这个高度
 
 @return 高度
 */
- (CGFloat)getHeightOfCell;

- (void)refreshCellWithModel:(TRTChatCellBaseModel *)modelCell;

@end

