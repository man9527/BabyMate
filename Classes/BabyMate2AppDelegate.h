//
//  BabyMate2AppDelegate.h
//  BabyMate2
//
//  Created by man9527 on 2010/5/16.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DashBoardNavigationBarController.h"
#import "LoadingViewController.h"

@interface BabyMate2AppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
//DashBoardNavigationBarController *dashBoardNavBarController;
	LoadingViewController *loadingViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;
//@property (nonatomic, retain) IBOutlet DashBoardNavigationBarController *dashBoardNavBarController;
@property (nonatomic, retain) IBOutlet LoadingViewController *loadingViewController;

@end
