//
//  WJMasonryNormalViewController.m
//  iOS_ masonry
//
//  Created by wangjie on 2018/3/21.
//  Copyright © 2018年 wangjie. All rights reserved.
//

#import "WJMasonryNormalViewController.h"
#import <Masonry.h>
@interface WJMasonryNormalViewController ()

@end

@implementation WJMasonryNormalViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    UIView * bigView = [[UIView alloc]init];
    [self.view addSubview:bigView];
    bigView.backgroundColor = [UIColor lightGrayColor];
    [bigView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.offset(0);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
