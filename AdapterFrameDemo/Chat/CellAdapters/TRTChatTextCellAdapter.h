//
//  TRTChatTextCellAdapter.h
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import "TRTChatCellBaseAdapter.h"

#import "TRTChatTextCell.h"
#import "TRTChatTextCellModel.h"

@interface TRTChatTextCellAdapter : TRTChatCellBaseAdapter

- (void)configCell:(TRTChatTextCell *)cell modelItem:(TRTChatTextCellModel *)modelItem;


@end
