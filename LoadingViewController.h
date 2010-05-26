//
//  LoadingViewController.h
//
//  Created by man9527 on 2010/5/19.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface LoadingViewController : UIViewController {
    //IBOutlet UIImageView *loading;
    //IBOutlet UIImageView *mainImage;
    IBOutlet UILabel *titleLabel;
}
@property (nonatomic, retain) IBOutlet UILabel *titleLabel;
- (IBAction)launch:(id)sender;
@end
