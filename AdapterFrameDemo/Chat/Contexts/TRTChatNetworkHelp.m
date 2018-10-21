//
//  TRTChatNetworkHelp.m
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import "TRTChatNetworkHelp.h"

@implementation TRTChatNetworkHelp

- (instancetype)initWithViewController:(ViewController *)chatVC
                             modelMain:(TRTChatMainModel *)mainModel
{
    self = [super init];
    if (self) {
        _chatVC = chatVC;
        _mainModel = mainModel;
    }
    return self;
}

- (void)loadFirstPage
{
    
}

- (void)loadMorePage
{
    
}

@end
