//
//  TRTChatTimeCellAdapter.m
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import "TRTChatTimeCellAdapter.h"

@implementation TRTChatTimeCellAdapter

- (void)configCell:(TRTChatTimeCell *)cell modelItem:(TRTChatTimeCellModel *)modelItem
{
    //布局以及样式的处理最好只做一次
    cell.modelItem = modelItem;
    if (NO == cell.isAfterReLayoutAndDecorate)  {
        //-做布局,甚至可以添加控件,不过不建议这么做
        //--最后赋值为YES
        cell.isAfterReLayoutAndDecorate = YES;
    }
    //--这里开始赋值
    [cell refreshCellWithModel:modelItem];
}


@end
