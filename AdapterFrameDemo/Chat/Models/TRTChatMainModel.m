//
//  TRTChatMainModel.m
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import "TRTChatMainModel.h"

@implementation TRTChatMainModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _arrayAllModels = [NSMutableArray array];
    }
    return self;
}

- (void)handleShowData
{
    NSMutableArray *arrayModel = [NSMutableArray array];
    
    for (int i = 0; i < 15; i++) {
        TRTChatCellBaseModel *baseCellModel = [[TRTChatCellBaseModel alloc] init];
        baseCellModel.typeOfCell = TRTChatMessageType_unKonw;
        [baseCellModel adjustModelPoperties];
        [arrayModel addObject:baseCellModel];
        
        TRTChatTimeCellModel *timeCellModel = [[TRTChatTimeCellModel alloc] init];
        timeCellModel.typeOfCell = TRTChatMessageType_time;
        [timeCellModel adjustModelPoperties];
        [arrayModel addObject:timeCellModel];
        
        TRTChatTextCellModel *textCellModel = [[TRTChatTextCellModel alloc] init];
        textCellModel.typeOfCell = TRTChatMessageType_text;
        [textCellModel adjustModelPoperties];
        [arrayModel addObject:textCellModel];
        
        TRTChatImageCellModel *imageCellModel = [[TRTChatImageCellModel alloc] init];
        imageCellModel.typeOfCell = TRTChatMessageType_image;
        [imageCellModel adjustModelPoperties];
        [arrayModel addObject:imageCellModel];
        
        TRTChatFileCellModel *fileCellModel = [[TRTChatFileCellModel alloc] init];
        fileCellModel.typeOfCell = TRTChatMessageType_file;
        [fileCellModel adjustModelPoperties];
        [arrayModel addObject:fileCellModel];
    }
    
    _arrayAllModels = arrayModel;
}

@end
