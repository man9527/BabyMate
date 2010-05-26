//
//  DashBoardMainViewController.h
//
//  Created by man9527 on 2010/5/16.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface DashBoardMainViewController : UIViewController < UIImagePickerControllerDelegate, UINavigationControllerDelegate,UIActionSheetDelegate > {
    IBOutlet UILabel *babyName;
    IBOutlet UIButton *babyPicture;
}
@property (nonatomic, retain) IBOutlet UILabel *babyName;
@property (nonatomic, retain) IBOutlet UIButton *babyPicture;


- (IBAction)choosePicture:(id)sender;
@end
