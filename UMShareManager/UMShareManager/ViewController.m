//
//  ViewController.m
//  UMShareManager
//
//  Created by 安潇 on 2017/2/3.
//  Copyright © 2017年 andianxiao. All rights reserved.
//

#import "ViewController.h"
#import "ShareManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton new];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(share) forControlEvents:UIControlEventTouchUpInside];

}

- (void)share{
    [[ShareManager sharedManager]shareWithSharedType:ShareTypeWeibo image:nil url:@"" content:@"12345" controller:self];
}


@end
