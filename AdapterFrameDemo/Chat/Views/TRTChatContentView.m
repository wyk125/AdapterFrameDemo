//
//  TRTChatContentView.m
//  AdapterFrameDemo
//
//  Created by wangyongkang on 2018/10/21.
//  Copyright © 2018 wangyongkang. All rights reserved.
//

#import "TRTChatContentView.h"

#import "TRTChatTableCellFactory.h"

@interface TRTChatContentView ()
<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) TRTChatTableCellFactory *cellFactory; //!< cell管理工厂
@property (nonatomic, strong) UITableView *tableView;                  //!< 列表视图
@property (nonatomic, strong) TRTChatMainModel *mainModel;

@end

@implementation TRTChatContentView

#pragma mark- Override Methods
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createSubviews];
        //注册cell
        _cellFactory = [[TRTChatTableCellFactory alloc] initWithTableView:_tableView];
        [_cellFactory registerCellsInTableView];
    }
    return self;
}

#pragma mark- Public Methods
- (void)reloadTableViewWithMainModel:(TRTChatMainModel *)mainModel
{
    _mainModel = mainModel;
    [self.cellFactory configAllCellModelWithArray:_mainModel.arrayAllModels];
    [self.tableView reloadData];
}

- (void)reloadTableViewCellWithIndexPaths:(NSArray <NSIndexPath *> *)arrayIndexPaths
                                mainModel:(TRTChatMainModel *)mainModel
{
    [self.tableView endUpdates];
    if (arrayIndexPaths.count) {
        _mainModel = mainModel;
        [self.cellFactory configAllCellModelWithArray:_mainModel.arrayAllModels];
        [self.tableView beginUpdates];
        [self.tableView reloadRowsAtIndexPaths:arrayIndexPaths
                              withRowAnimation:UITableViewRowAnimationFade];
        [self.tableView endUpdates];
    }
}

#pragma mark- <DDFindActionCellProtocol>

#pragma mark- <UITableViewDataSource>
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _mainModel.arrayAllModels.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row >= _mainModel.arrayAllModels.count || indexPath.row < 0) {
        return [[UITableViewCell alloc] init];
    }
    TRTChatCellBaseModel *modelItem = [_mainModel.arrayAllModels objectAtIndex:indexPath.row];
    TRTChatBaseCell *cell = [_cellFactory getCellWithIndexPath:indexPath
                                                     modelItem:modelItem
                                                  cellDelegate:self];
    return cell;
}

#pragma mark- <UITableViewDelegate>
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row >= _mainModel.arrayAllModels.count || indexPath.row < 0) {
        return 0;
    }
    TRTChatCellBaseModel *modelItem = [_mainModel.arrayAllModels objectAtIndex:indexPath.row];
    return [_cellFactory getCellHeightWithIndexPath:indexPath modelItem:modelItem];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return CGFLOAT_MIN;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return CGFLOAT_MIN;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row >= _mainModel.arrayAllModels.count || indexPath.row < 0) {
        return ;
    }
    TRTChatCellBaseModel *modelItem = [_mainModel.arrayAllModels objectAtIndex:indexPath.row];
    NSLog(@"点击了cell %@",NSStringFromClass([modelItem class]));
}

#pragma mark- Private Methods
- (void)createSubviews
{
    [self makeTableView];
    [self addSubview:_tableView];
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
}

- (void)makeTableView
{
    _tableView = [[UITableView alloc] initWithFrame:self.bounds style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //避免防止刷新后的滚动偏移
    _tableView.estimatedRowHeight = 0;
    _tableView.estimatedSectionHeaderHeight = 0;
    _tableView.estimatedSectionFooterHeight = 0;
}

@end
