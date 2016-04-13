//
//  ViewController.m
//  April_13_CellHeight
//
//  Created by HuangGuoQing on 16/4/13.
//  Copyright © 2016年 HJL. All rights reserved.
//

#define SCREENWIDTH [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height

#import "ViewController.h"
#import "HHTableViewCell.h"

@interface ViewController () <UITableViewDataSource> {
    NSArray *dataArr;
}

@property (nonatomic)UITableView *tableView_;

@end

@implementation ViewController

- (UITableView *)tableView_ {
    if (!_tableView_) {
        _tableView_ = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT) style:UITableViewStyleGrouped];
        _tableView_.dataSource = self;
        _tableView_.estimatedRowHeight = 100;
        _tableView_.rowHeight = UITableViewAutomaticDimension;
        dataArr = @[@"1242434534986798479684596u4702497845987049538n4h1242434534986798479684596u4702497845987049538n4h1242434534986798479684596u4702497845987049538n4h1242434534986798479684596u4702497845987049538n4h1242434534986798479684596u4702497845987049538n4h1242434534986798479684596u4702497845987049538n4h1242434534986798479684596u4702497845987049538n4h1242434534986798479684596u4702497845987049538n4h1242434534986798479684596u4702497845987049538n4h jf nfdjnlkfn fd nnblk", @"124235", @"23593ugj jkrehgiu hergkn egn gkeng ngj"];
    }
    return _tableView_;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *identifier = @"cell";
    HHTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"HHTableViewCell" owner:self options:nil][0];
    }
    cell.label.text = dataArr[indexPath.row];
    return cell;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView_];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
