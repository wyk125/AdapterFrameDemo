//
//  TRTChatNetworkHelp.h
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "TRTChatMainModel.h"

@class ViewController;

@interface TRTChatNetworkHelp : NSObject

@property (nonatomic, weak) ViewController *chatVC;         //!<弱引用控制器
@property (nonatomic, strong) TRTChatMainModel *mainModel;  //!<主数据模型

- (instancetype)initWithViewController:(ViewController *)chatVC
                             modelMain:(TRTChatMainModel *)mainModel;

- (void)loadFirstPage;

- (void)loadMorePage;

@end
