//
//  DashBoardMainViewController.m
//
//  Created by man9527 on 2010/5/16.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "DashBoardMainViewController.h"

@implementation DashBoardMainViewController
@synthesize babyName;
@synthesize babyPicture;

- (IBAction)choosePicture:(id)sender {
	UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"選擇照片來源" delegate:self
														cancelButtonTitle:@"取消" destructiveButtonTitle:nil otherButtonTitles:@"From Album",@"From Camera",nil];
	[actionSheet showInView:self.view];
     
}  

-(void)actionSheet:(UIActionSheet *) actionSheet clickedButtonAtIndex:(NSInteger) buttonIndex{
	NSLog(@"Button %i",buttonIndex);
	
	if (buttonIndex<2)
	{
		UIImagePickerController * picker = [[UIImagePickerController alloc] init];
		picker.delegate = self;
		
		if(buttonIndex==0) {
			picker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
		} else {
			picker.sourceType = UIImagePickerControllerSourceTypeCamera;
		}
		
		[self presentModalViewController:picker animated:YES];
		[picker release];
	}
	
	
	[actionSheet release];
	
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
	[picker dismissModalViewControllerAnimated:YES];
	[babyPicture setBackgroundImage:[info objectForKey:@"UIImagePickerControllerOriginalImage"] forState:UIControlStateNormal];
//babyPicture.background = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
}
@end

