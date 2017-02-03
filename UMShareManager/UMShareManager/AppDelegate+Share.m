//
//  AppDelegate+Share.m
//  UMShareManager
//
//  Created by 安潇 on 2017/2/3.
//  Copyright © 2017年 andianxiao. All rights reserved.
//

#import "AppDelegate+Share.h"
#import "ShareManager.h"
#import <UMengSocialCOM/UMSocial.h>
#import <UMengSocialCOM/UMSocialWechatHandler.h>
#import <UMengSocialCOM/UMSocialQQHandler.h>
#import <UMengSocialCOM/UMSocialSinaSSOHandler.h>

@implementation AppDelegate (Share)

- (void)registerUMShare{
    [[ShareManager sharedManager]registerAllPlatForms];
}

/**
 这里处理新浪微博SSO授权之后跳转回来，和微信分享完成之后跳转回来
 */
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    return  [UMSocialSnsService handleOpenURL:url wxApiDelegate:nil];
}

/**
 这里处理新浪微博SSO授权进入新浪微博客户端后进入后台，再返回原来应用
 */
- (void)applicationDidBecomeActive:(UIApplication *)application
{
    [UMSocialSnsService  applicationDidBecomeActive];
}


@end
