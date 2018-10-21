//
//  TRTChatMainModel.h
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "TRTChatTimeCellModel.h"
#import "TRTChatTextCellModel.h"
#import "TRTChatImageCellModel.h"
#import "TRTChatFileCellModel.h"

@interface TRTChatMainModel : NSObject

@property (nonatomic, strong) NSMutableArray <TRTChatCellBaseModel *> *arrayAllModels; //!<全部的楼层列表

- (void)handleShowData;

@end

