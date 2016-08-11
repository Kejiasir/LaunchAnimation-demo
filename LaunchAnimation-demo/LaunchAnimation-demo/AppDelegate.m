//
//  AppDelegate.m
//  LaunchAnimation-demo
//
//  Created by Arvin on 16/8/11.
//  Copyright © 2016年 Arvin. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

#define WIDTH  [[UIScreen mainScreen] bounds].size.width
#define HEIGHT [[UIScreen mainScreen] bounds].size.height
#define MAINSCREEN [[UIScreen mainScreen] currentMode].size

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    UINavigationController *navigationVC = [[UINavigationController alloc]
                                            initWithRootViewController:[[ViewController alloc] init]];
    self.window.rootViewController = navigationVC;
    [self.window makeKeyAndVisible];
    [self setupLaunchImage];
    return YES;
}

- (void)setupLaunchImage {
    
    UIImage *launchImage = [self launchImage];
    UIView *bgLaunchView = [[UIView alloc] init];
    [bgLaunchView setFrame:self.window.bounds];
    [self.window addSubview:bgLaunchView];
    
    // top image
    UIImageView *topImageView = [[UIImageView alloc] init];
    [topImageView setFrame:CGRectMake(0, 0, WIDTH, HEIGHT*0.5)];
    CGRect topImgRect = CGRectMake(0, 0, MAINSCREEN.width, MAINSCREEN.height*0.5);
    [topImageView setImage:[self clipImage:launchImage withRect:topImgRect]];
    
    // bottom image
    UIImageView *bottomImageView = [[UIImageView alloc] init];
    [bottomImageView setFrame:CGRectMake(0, HEIGHT*0.5, WIDTH, HEIGHT*0.5)];
    CGRect bottomImgRect = CGRectMake(0, MAINSCREEN.height*0.5, MAINSCREEN.width, MAINSCREEN.height*0.5);
    [bottomImageView setImage:[self clipImage:launchImage withRect:bottomImgRect]];
    
    [bgLaunchView addSubview:topImageView];
    [bgLaunchView addSubview:bottomImageView];
    
    // delay animation
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [UIView animateWithDuration:1.5f animations:^{
            CGRect topRect = topImageView.frame;
            topRect.origin.y -= HEIGHT;
            topImageView.frame = topRect;
            
            CGRect bottomRect = bottomImageView.frame;
            bottomRect.origin.y += HEIGHT;
            bottomImageView.frame = bottomRect;
        } completion:^(BOOL finished) {
            [bgLaunchView removeFromSuperview];
        }];
    });
}

- (UIImage *)launchImage {
    CGSize viewSize = [UIScreen mainScreen].bounds.size;
    NSString *viewOrientation = @"Portrait"; // Horizontal "Landscape"
    NSString *launchImage = nil;
    NSArray *imagesDict = [[[NSBundle mainBundle] infoDictionary] valueForKey:@"UILaunchImages"];
    for (NSDictionary *dict in imagesDict) {
        CGSize imageSize = CGSizeFromString(dict[@"UILaunchImageSize"]);
        if (CGSizeEqualToSize(imageSize, viewSize) &&
            [viewOrientation isEqualToString:dict[@"UILaunchImageOrientation"]]) {
            launchImage = dict[@"UILaunchImageName"];
        }
    }
    return [UIImage imageNamed:launchImage];
}

- (UIImage *)clipImage:(UIImage *)image withRect:(CGRect)rect {
    CGRect clipFrame = rect;
    CGImageRef refImage = CGImageCreateWithImageInRect(image.CGImage, clipFrame);
    UIImage *newImage = [UIImage imageWithCGImage:refImage];
    CGImageRelease(refImage);
    return newImage;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
