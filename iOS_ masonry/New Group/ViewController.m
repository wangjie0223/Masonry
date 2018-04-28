//
//  ViewController.m
//  iOS_ masonry
//
//  Created by wangjie on 2018/3/21.
//  Copyright © 2018年 wangjie. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
@interface ViewController ()

@property (nonatomic,strong)NSMutableArray * masonryViewArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self masonryViewArray];
    //1.水平方向排列、固定控件间隔、控件长度不定
    //[self test_masonry_horizontal_fixSpace];
    //2.水平方向排列、固定控件长度、控件间隔不定
    //[self test_masonry_horizontal_fixItemWidth];
    //3、垂直方向排列、固定控件间隔、控件高度不定
    [self test_masonry_vertical_fixSpace];
    //4、垂直方向排列、固定控件高度、控件间隔不定
    //[self test_masonry_vertical_fixItemWidth];

}

//1.水平方向排列、固定控件间隔、控件长度不定
- (void)test_masonry_horizontal_fixSpace {
    
    // 实现masonry水平固定间隔方法
    [self.masonryViewArray mas_distributeViewsAlongAxis:MASAxisTypeHorizontal withFixedSpacing:30 leadSpacing:10 tailSpacing:10];
    
    // 设置array的垂直方向的约束
    [self.masonryViewArray mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(@150);
        make.height.equalTo(@80);
    }];
}



//2.水平方向排列、固定控件长度、控件间隔不定
- (void)test_masonry_horizontal_fixItemWidth {
    
    // 实现masonry水平固定控件宽度方法
    [self.masonryViewArray mas_distributeViewsAlongAxis:MASAxisTypeHorizontal withFixedItemLength:80 leadSpacing:10 tailSpacing:10];
    
    // 设置array的垂直方向的约束
    [self.masonryViewArray mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(@150);
        make.height.equalTo(@80);
    }];
}

//3、垂直方向排列、固定控件间隔、控件高度不定
- (void)test_masonry_vertical_fixSpace {
    
    // 实现masonry垂直固定控件高度方法
    [self.masonryViewArray mas_distributeViewsAlongAxis:MASAxisTypeVertical withFixedSpacing:30 leadSpacing:80 tailSpacing:10];
    
    // 设置array的水平方向的约束
    [self.masonryViewArray mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(@150);
        make.width.equalTo(@80);
    }];
}

//4、垂直方向排列、固定控件高度、控件间隔不定
- (void)test_masonry_vertical_fixItemWidth {
    
    // 实现masonry垂直方向固定控件高度方法
    [self.masonryViewArray mas_distributeViewsAlongAxis:MASAxisTypeVertical withFixedItemLength:80 leadSpacing:10 tailSpacing:10];
    
    // 设置array的水平方向的约束
    [self.masonryViewArray mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@150);
        make.width.equalTo(@80);
    }];
}




- (NSMutableArray *)masonryViewArray {
    
    if (!_masonryViewArray) {
        
        _masonryViewArray = [NSMutableArray array];
        for (int i = 0; i < 4; i ++) {
            
            UIView *view = [[UIView alloc] init];
            view.backgroundColor = [UIColor redColor];
            [self.view addSubview:view];
            [_masonryViewArray addObject:view];
        }
    }
    
    return _masonryViewArray;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
