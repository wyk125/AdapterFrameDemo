//
//  TRTChatImageCellAdapter.h
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import "TRTChatCellBaseAdapter.h"

#import "TRTChatImageCell.h"
#import "TRTChatImageCellModel.h"

@interface TRTChatImageCellAdapter : TRTChatCellBaseAdapter

- (void)configCell:(TRTChatImageCell *)cell modelItem:(TRTChatImageCellModel *)modelItem;


@end
