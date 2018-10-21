//
//  TRTChatTableCellFactory.h
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "TRTChatCellBaseAdapter.h"
#import "TRTChatTimeCellAdapter.h"
#import "TRTChatTextCellAdapter.h"
#import "TRTChatImageCellAdapter.h"
#import "TRTChatFileCellAdapter.h"

@interface TRTChatTableCellFactory : NSObject

- (instancetype)initWithTableView:(UITableView *)tableView;

- (void)registerCellsInTableView;

- (void)configAllCellModelWithArray:(NSArray *)arrayAllModels;

- (TRTChatBaseCell *)getCellWithIndexPath:(NSIndexPath *)indexPath
                                modelItem:(TRTChatCellBaseModel *)modelItem
                             cellDelegate:(id)cellDelegate;

- (CGFloat)getCellHeightWithIndexPath:(NSIndexPath *)indexPath
                            modelItem:(TRTChatCellBaseModel *)modelItem;

@end
