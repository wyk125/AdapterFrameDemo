//
//  TRTChatCellBaseAdapter.h
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "TRTChatBaseCell.h"
#import "TRTChatCellBaseModel.h"

@interface TRTChatCellBaseAdapter : NSObject

- (void)configCell:(TRTChatBaseCell *)cell modelItem:(TRTChatCellBaseModel *)modelItem;

@end
