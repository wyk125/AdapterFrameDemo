//
//  TRTChatTimeCellAdapter.h
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import "TRTChatCellBaseAdapter.h"

#import "TRTChatTimeCell.h"
#import "TRTChatTimeCellModel.h"

@interface TRTChatTimeCellAdapter : TRTChatCellBaseAdapter

- (void)configCell:(TRTChatTimeCell *)cell modelItem:(TRTChatTimeCellModel *)modelItem;

@end

