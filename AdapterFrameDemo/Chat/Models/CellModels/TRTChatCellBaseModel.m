//
//  TRTChatCellBaseModel.m
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import "TRTChatCellBaseModel.h"

@implementation TRTChatCellBaseModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self makeInitalData];
    }
    return self;
}

- (void)makeInitalData
{
    _heightOfCell = -1;
    _typeOfCell = TRTChatMessageType_unKonw;
}

- (void)reSetCellHeight
{
    _heightOfCell = -1;
}

- (void)adjustModelPoperties
{
    //子类实现
}

@end
