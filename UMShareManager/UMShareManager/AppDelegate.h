//
//  AppDelegate.h
//  UMShareManager
//
//  Created by 安潇 on 2017/2/3.
//  Copyright © 2017年 andianxiao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

