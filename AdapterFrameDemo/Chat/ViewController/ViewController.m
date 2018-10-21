//
//  ViewController.m
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import "ViewController.h"

#import "TRTChatContentView.h"
#import "TRTChatContext.h"
#import "Masonry.h"

@interface ViewController ()

@property (nonatomic, strong) TRTChatContext *context;             //!<上下文环境
@property (nonatomic, strong) TRTChatContentView *viewChatContent; //!<视图容器

@end

@implementation ViewController

#pragma mark - Life Cycle Methods
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initData];
    [self initContentView];
    [self loadNetworkData];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

#pragma mark- Private Methods
- (void)initData
{
    self.context = [[TRTChatContext alloc] initWithViewController:self];
}

- (void)loadNetworkData
{
    [self.context.networkHelper loadFirstPage];
    //模拟加载完成
    [self loadNetworkDataComplete];
}

- (void)loadNetworkDataComplete   //!<分类列表加载成功
{
    [self.context.mainModel handleShowData];
    [self.viewChatContent reloadTableViewWithMainModel:self.context.mainModel];
}

- (void)initContentView
{
    self.view.backgroundColor = UIColor.orangeColor;
    self.viewChatContent = [[TRTChatContentView alloc] initWithFrame:CGRectZero];
    [self.view addSubview:self.viewChatContent];
    [self.viewChatContent mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

@end
