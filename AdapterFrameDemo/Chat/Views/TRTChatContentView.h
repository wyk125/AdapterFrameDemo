//
//  TRTChatContentView.h
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TRTChatMainModel.h"

@interface TRTChatContentView : UIView

- (void)reloadTableViewWithMainModel:(TRTChatMainModel *)mainModel;

- (void)reloadTableViewCellWithIndexPaths:(NSArray <NSIndexPath *> *)arrayIndexPaths
                                mainModel:(TRTChatMainModel *)mainModel;

@end

