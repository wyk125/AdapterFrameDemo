//
//  TRTChatContext.h
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "TRTChatMainModel.h"
#import "TRTChatNetworkHelp.h"
#import "TRTChatLogicHelp.h"
@class ViewController;


@interface TRTChatContext : NSObject

@property (nonatomic, weak) ViewController *chatVC;              //!<弱引用控制器
@property (nonatomic, strong) TRTChatMainModel *mainModel;       //!<主数据模型
@property (nonatomic, strong) TRTChatNetworkHelp *networkHelper; //!<网络请求处理类
@property (nonatomic, strong) TRTChatLogicHelp *logicHelper;     //!<逻辑处理类

- (instancetype)initWithViewController:(ViewController *)chatVC;


@end
