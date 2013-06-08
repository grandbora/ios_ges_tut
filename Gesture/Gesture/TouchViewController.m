//
//  TouchViewController.m
//  Gesture
//
//  Created by Bora Tunca on 6/6/13.
//  Copyright (c) 2013 Bora Tunca. All rights reserved.
//

#import "TouchViewController.h"

@interface TouchViewController ()

@end

@implementation TouchViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) touchesBegan:(NSSet *)touches
            withEvent:(UIEvent *)event
{
    NSUInteger touchCount = [touches count];
    NSUInteger tapCount = [[touches anyObject] tapCount];
    _methodStatus.text = @"touchesBegan";
    _touchStatus.text = [NSString stringWithFormat:
                         @"%d touches", touchCount];
    _tapStatus.text = [NSString stringWithFormat:
                       @"%d taps", tapCount];
    

    [self playClick];
    [self showMessage];
}

- (void) touchesMoved:(NSSet *)touches
            withEvent:(UIEvent *)event
{
    NSUInteger touchCount = [touches count];
    NSUInteger tapCount = [[touches anyObject] tapCount];
    _methodStatus.text = @"touchesMoved";
    _touchStatus.text = [NSString stringWithFormat:
                         @"%d touches", touchCount];
    _tapStatus.text = [NSString stringWithFormat:
                       @"%d taps", tapCount];
}

- (void) touchesEnded:(NSSet *)touches
            withEvent:(UIEvent *)event
{
    NSUInteger touchCount = [touches count];
    NSUInteger tapCount = [[touches anyObject] tapCount];
    _methodStatus.text = @"touchesEnded";
    _touchStatus.text = [NSString stringWithFormat:
                         @"%d touches", touchCount];
    _tapStatus.text = [NSString stringWithFormat:
                       @"%d taps", tapCount];
}
- (IBAction)longPressDetected:(id)sender {
    _statusLabel.text = @"Long Press";
}

- (IBAction)panDetected:(id)sender {
//    _statusLabel.text = @"Pan Press";
}

- (IBAction)swipeDetected:(id)sender {
    _statusLabel.text = @"Long Press";
}

- (IBAction)rotationDetected:(id)sender {
    CGFloat radians =
    [(UIRotationGestureRecognizer *)sender rotation];
    CGFloat velocity =
    [(UIRotationGestureRecognizer *)sender velocity];
    
    NSString *resultString = [[NSString alloc] initWithFormat:
                              @"Rotation - Radians = %f, velocity = %f",
                              radians, velocity];
    _statusLabel.text = resultString;
}

- (IBAction)pinchDetected:(id)sender {
    CGFloat scale =
    [(UIPinchGestureRecognizer *)sender scale];
    CGFloat velocity =
    [(UIPinchGestureRecognizer *)sender velocity];
    
    NSString *resultString = [[NSString alloc] initWithFormat:
                              @"Pinch - scale = %f, velocity = %f",
                              scale, velocity];
    _statusLabel.text = resultString;
}

- (IBAction)tapDetected:(id)sender {
    _statusLabel.text = @"Double Tap";
}

-(void)playClick
{
    NSURL* musicFile = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                               pathForResource:@"click-yes"
                                               ofType:@"mp3"]];
    AVAudioPlayer *click = [[AVAudioPlayer alloc] initWithContentsOfURL:musicFile error:nil];
    [click play];
}

-(IBAction)showMessage
{
    UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Hello World!"
                                                      message:@"This is your first UIAlertview message."
                                                     delegate:nil
                                            cancelButtonTitle:@"OK"
                                            otherButtonTitles:nil];
    [message show];
}
@end
