//
//  TRTChatTableCellFactory.m
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import "TRTChatTableCellFactory.h"


#define GetSafeValidClassName(className)  (((void)(NO && ((void)[className new], NO)), @#className))

@interface TRTChatTableCellFactory ()

@property (nonatomic, strong) UITableView *tableView;   //!<

@end

@implementation TRTChatTableCellFactory

#pragma mark- Public Methods
- (instancetype)initWithTableView:(UITableView *)tableView
{
    self = [super init];
    if (self) {
        _tableView = tableView;
    }
    return self;
}

- (TRTChatBaseCell *)getCellWithIndexPath:(NSIndexPath *)indexPath
                                modelItem:(TRTChatCellBaseModel *)modelItem
                             cellDelegate:(id)cellDelegate
{
    TRTChatBaseCell *cellBase = [[TRTChatBaseCell alloc] init];
    cellBase = [_tableView dequeueReusableCellWithIdentifier:modelItem.classNameOfCell
                                                forIndexPath:indexPath];
    cellBase.tableViewOfCell = self.tableView;
    //装配内容
    [self adapterCellWithCell:cellBase modelItem:modelItem];
    //设置delegate
    [self setDelegateForCell:cellBase cellDelegate:cellDelegate];
    
    return cellBase;
}

- (CGFloat)getCellHeightWithIndexPath:(NSIndexPath *)indexPath
                            modelItem:(TRTChatCellBaseModel *)modelItem
{
    modelItem.indexPathCurrent = indexPath;
    if (TRTChatMessageType_unKonw == modelItem.typeOfCell) {
        return CGFLOAT_MIN;
    }
    if (modelItem.heightOfCell <= 0) {
        CGFloat height;
        TRTChatBaseCell *cellBase = [[NSClassFromString(modelItem.classNameOfCell) alloc] init];
        if (![cellBase isKindOfClass:[TRTChatBaseCell class]]) {
            cellBase = [[TRTChatBaseCell alloc] init];
        }
        [self adapterCellWithCell:cellBase modelItem:modelItem];
        
        if ([cellBase getHeightOfCell] >= 0) {
            height = [cellBase getHeightOfCell];
        } else {
            height = [cellBase systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
        }
        modelItem.heightOfCell = height;
    }
    
    return modelItem.heightOfCell;
}

- (void)registerCellsInTableView
{
    //0.创建默认cell
    [_tableView registerClass:[TRTChatBaseCell class]
       forCellReuseIdentifier:GetSafeValidClassName(TRTChatBaseCell)];
    //1.时间
    [_tableView registerClass:[TRTChatTimeCell class]
       forCellReuseIdentifier:GetSafeValidClassName(TRTChatTimeCell)];
    //2.文字
    [_tableView registerClass:[TRTChatTextCell class]
       forCellReuseIdentifier:GetSafeValidClassName(TRTChatTextCell)];
    //3.图片
    [_tableView registerClass:[TRTChatImageCell class]
       forCellReuseIdentifier:GetSafeValidClassName(TRTChatImageCell)];
    //4.文件
    [_tableView registerClass:[TRTChatFileCell class]
       forCellReuseIdentifier:GetSafeValidClassName(TRTChatFileCell)];
}

- (void)configAllCellModelWithArray:(NSArray *)arrayAllModels
{
    for (TRTChatCellBaseModel *modelCellBase in arrayAllModels) {
        switch (modelCellBase.typeOfCell) {
            case TRTChatMessageType_unKonw: {
                modelCellBase.classNameOfCell = GetSafeValidClassName(TRTChatBaseCell);
                modelCellBase.classNameOfCellAdapter = GetSafeValidClassName(TRTChatCellBaseAdapter);
                break;
            }
            case TRTChatMessageType_time: {
                modelCellBase.classNameOfCell = GetSafeValidClassName(TRTChatTimeCell);
                modelCellBase.classNameOfCellAdapter = GetSafeValidClassName(TRTChatTimeCellAdapter);
                break;
            }
            case TRTChatMessageType_text: {
                modelCellBase.classNameOfCell = GetSafeValidClassName(TRTChatTextCell);
                modelCellBase.classNameOfCellAdapter = GetSafeValidClassName(TRTChatTextCellAdapter);
                break;
            }
            case TRTChatMessageType_image: {
                modelCellBase.classNameOfCell = GetSafeValidClassName(TRTChatImageCell);
                modelCellBase.classNameOfCellAdapter = GetSafeValidClassName(TRTChatImageCellAdapter);
                break;
            }
            case TRTChatMessageType_file: {
                modelCellBase.classNameOfCell = GetSafeValidClassName(TRTChatFileCell);
                modelCellBase.classNameOfCellAdapter = GetSafeValidClassName(TRTChatFileCellAdapter);
                break;
            }
        }
    }
}
#pragma mark- Private Methods
- (void)adapterCellWithCell:(TRTChatBaseCell *)cell
                  modelItem:(TRTChatCellBaseModel *)modelItem
{
    cell.modelItem = modelItem;
    TRTChatCellBaseAdapter *adapterOfBaseCell = [[NSClassFromString(modelItem.classNameOfCellAdapter) alloc] init];
    if ([adapterOfBaseCell isKindOfClass:[TRTChatCellBaseAdapter class]]) {
        [adapterOfBaseCell configCell:cell modelItem:modelItem];
    }
}


- (void)setDelegateForCell:(TRTChatBaseCell *)baseCell
              cellDelegate:(id)cellDelegate
{
    if ([baseCell isKindOfClass:[TRTChatBaseCell class]]) {
        //        TRTChatBaseCell *cell = (TRTChatBaseCell *)baseCell;
        //        cell.delegate = delegate;
    }
    else if ([baseCell isKindOfClass:[TRTChatTimeCell class]]) {
        
    }
    else if ([baseCell isKindOfClass:[TRTChatTextCell class]]) {
        
    }
    else if ([baseCell isKindOfClass:[TRTChatImageCell class]]) {
        
    }
    else if ([baseCell isKindOfClass:[TRTChatFileCell class]]) {
        
    }
}

@end
