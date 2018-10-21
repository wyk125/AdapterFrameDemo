//
//  TRTChatCellBaseModel.h
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, TRTChatMessageType) {
    TRTChatMessageType_unKonw = 0,          //!< 枚举值默认为0,返回基类cell,这样避免返回nil崩溃
    
    TRTChatMessageType_time = 1,            //!< 时间 cell
    TRTChatMessageType_text = 2,            //!< 纯文本 cell
    TRTChatMessageType_image = 3,           //!< 图片 cell
    TRTChatMessageType_file = 4,            //!< 文件 cell
};

@interface TRTChatCellBaseModel : NSObject

@property (nonatomic, assign) TRTChatMessageType typeOfCell;  //!<cell的类型,取到对应的cell和Adapter
@property (nonatomic, assign) CGFloat heightOfCell;           //!<缓存cell的高度,初始值为-1
@property (nonatomic, strong) NSIndexPath *indexPathCurrent;
@property (nonatomic, copy) NSString *classNameOfCell;        //!<楼层cell的类名
@property (nonatomic, copy) NSString *classNameOfCellAdapter; //!<cell的类型,取到对应的cell和Adapter

//@property (nonatomic, copy) NSString *linkUrl;                //!<此url有值 点击走跳转中心使用
//@property (nonatomic, copy) NSString *floorType;              //!<楼层类型
//@property (nonatomic, copy) NSString *floorTitle;             //!<楼层名称
//@property (nonatomic, copy) NSString *floorForBury;           //!<floor=find_videoL#title=发现视频

- (void)reSetCellHeight;  //!<如果cell需要重新计算高度, 那么调用此方法

- (void)adjustModelPoperties;

@end

