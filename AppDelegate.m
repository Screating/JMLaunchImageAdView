//
//  AppDelegate.m
//  JMLaunchImageAdView
//
//  Created by 胡金萌 on 2017/9/21.
//  Copyright © 2017年 com.hjm. All rights reserved.
//

#import "AppDelegate.h"
#import "JMLunchImageAddView.h"
#import "SecondViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
 
    /* FullScreenAdType 全屏广告
     * LogoAdType  注意的启动图片必须带logo图
     * localAdImgName  本地图片名字
     */
    JMLunchImageAddView * adView = [[JMLunchImageAddView alloc]initWithWindow:self.window andType:FullScreenAdType andImgUrl:@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1495711260542&di=07c7d8cefe2e19c324fc755bc182475d&imgtype=0&src=http%3A%2F%2Fimg6.3lian.com%2Fc23%2Fdesk4%2F02%2F98%2Fd%2F04.jpg"];
    //各种回调
    __weak typeof(self) weakSelf = self;
    adView.clickBlock = ^(NSInteger tag){
        switch (tag) {
            case 1100:{
                NSLog(@"点击广告回调");
            SecondViewController *control = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"SecondViewController"];
                [weakSelf.window.rootViewController presentViewController:control animated:YES completion:nil];
            }
                break;
            case 1101:
                NSLog(@"点击跳过回调");
                break;
            case 1102:
                NSLog(@"倒计时完成后的回调");
                break;
            default:
                break;
        }
        
    };
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
