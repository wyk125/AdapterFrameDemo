//
//  TRTChatContext.m
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import "TRTChatContext.h"

@implementation TRTChatContext

- (instancetype)initWithViewController:(ViewController *)chatVC
{
    self = [super init];
    if (self) {
        _chatVC = chatVC;
        _mainModel = [[TRTChatMainModel alloc] init];
        _networkHelper =  [[TRTChatNetworkHelp alloc] initWithViewController:_chatVC
                                                                   modelMain:_mainModel];
        _logicHelper = [[TRTChatLogicHelp alloc] initWithViewController:_chatVC
                                                              modelMain:_mainModel];
    }
    
    return self;
}

@end
