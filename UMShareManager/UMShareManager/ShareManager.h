//
//  ShareManager.h
//  UMShareManager
//
//  Created by 安潇 on 2017/2/3.
//  Copyright © 2017年 andianxiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**
 *  三方类型
 */
typedef NS_ENUM(NSUInteger, ShareType) {
    /** QQ*/
    ShareTypeQQ = 1,
    /** QQ空间*/
    ShareTypeQZone,
    /** 微信会话*/
    ShareTypeWechatSession,
    /** 微信朋友圈*/
    ShareTypeWechat,
    /** 微博*/
    ShareTypeWeibo,
};


@interface ShareManager : NSObject

+ (instancetype)sharedManager;

- (void)shareWithSharedType:(ShareType)shareType
                      image:(UIImage *)image
                        url:(NSString *)url
                    content:(NSString *)content
                 controller:(UIViewController *)controller;

- (void)registerAllPlatForms;

@end
