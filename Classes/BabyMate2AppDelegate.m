//
//  BabyMate2AppDelegate.m
//  BabyMate2
//
//  Created by man9527 on 2010/5/16.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "BabyMate2AppDelegate.h"
#import "DashBoardNavigationBarController.h"
#import "LoadingViewController.h"


@implementation BabyMate2AppDelegate

@synthesize window;
@synthesize tabBarController;
//@synthesize dashBoardNavBarController;
@synthesize loadingViewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Add the tab bar controller's current view as a subview of the window
	sleep(2);
    [window addSubview:tabBarController.view];
    [window makeKeyAndVisible];

	return YES;
}


/*
// Optional UITabBarControllerDelegate method
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
}
*/

/*
// Optional UITabBarControllerDelegate method
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed {
}
*/


- (void)dealloc {
    [tabBarController release];
	//[dashBoardNavBarController release];
	[loadingViewController release];
    [window release];
    [super dealloc];
}

@end

