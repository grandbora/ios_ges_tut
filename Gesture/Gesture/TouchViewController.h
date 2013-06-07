//
//  TouchViewController.h
//  Gesture
//
//  Created by Bora Tunca on 6/6/13.
//  Copyright (c) 2013 Bora Tunca. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TouchViewController : UIViewController
- (IBAction)longPressDetected:(id)sender;
- (IBAction)panDetected:(id)sender;
- (IBAction)swipeDetected:(id)sender;
- (IBAction)rotationDetected:(id)sender;
- (IBAction)pinchDetected:(id)sender;
- (IBAction)tapDetected:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@property (weak, nonatomic) IBOutlet UILabel *tapStatus;
@property (weak, nonatomic) IBOutlet UILabel *touchStatus;
@property (weak, nonatomic) IBOutlet UILabel *methodStatus;

@end
