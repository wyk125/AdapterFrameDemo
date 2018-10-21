//
//  TRTChatFileCellAdapter.h
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import "TRTChatCellBaseAdapter.h"

#import "TRTChatFileCell.h"
#import "TRTChatFileCellModel.h"

@interface TRTChatFileCellAdapter : TRTChatCellBaseAdapter

- (void)configCell:(TRTChatFileCell *)cell modelItem:(TRTChatFileCellModel *)modelItem;


@end
