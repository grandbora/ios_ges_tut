//
//  TouchViewController.h
//  Gesture
//
//  Created by Bora Tunca on 6/6/13.
//  Copyright (c) 2013 Bora Tunca. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TouchViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *status;
@property (weak, nonatomic) IBOutlet UILabel *tapStatus;
@property (weak, nonatomic) IBOutlet UILabel *touchStatus;
@property (weak, nonatomic) IBOutlet UILabel *methodStatus;

@end
