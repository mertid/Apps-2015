//
//  EditViewController.h
//  delegates.
//
//  Created by Merritt Tidwell on 1/27/15.
//  Copyright (c) 2015 Merritt Tidwell. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol ZIPEdited <NSObject>

-(void)ZipEditedDone:(NSString*)oldZIP newZIP:(NSString*)newzip;

@end


@interface EditViewController : UIViewController


@property (nonatomic, weak) id <ZIPEdited> Delegate;


@property (nonatomic, copy) NSString *ZIP;
@property (nonatomic, copy) NSString * State;

@property (strong, nonatomic) IBOutlet UILabel *stateLabel;
@property (strong, nonatomic) IBOutlet UITextField *tfZipCode;
- (IBAction)doneButtonPressed:(id)sender;

@end
