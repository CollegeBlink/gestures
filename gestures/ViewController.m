//
//  ViewController.m
//  gestures
//
//  Created by Mark Dumes on 12/3/13.
//  Copyright (c) 2013 CollegeBlink. All rights reserved.
//

#import "ViewController.h"
#define kOriginWidth 240.0
#define kOriginHeight 128.0
#define kOriginX 40.0
#define kOriginY 427.0
@interface ViewController ()

@end

@implementation ViewController
@synthesize image;
@synthesize label;
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

- (IBAction)foundtap:(id)sender {
    [label setText:@"Tapped"];
}
- (IBAction)foundpinch:(id)sender {
    
    UIPinchGestureRecognizer *recognizer;
    NSString *feedback;
    double scale;
    
        recognizer=(UIPinchGestureRecognizer *)sender;
    scale = recognizer.scale;
    image.transform = CGAffineTransformMakeRotation(0.0);
        feedback=[[NSString alloc]
                     initWithFormat:@"Pinched, Scale:%1.2f,Velocity:%1.2f",recognizer.scale,recognizer.velocity];
    label.text=feedback;
    image.frame=CGRectMake(kOriginX,
            kOriginY,kOriginWidth*scale,kOriginHeight*scale);
}

- (IBAction)foundrotation:(id)sender {
    UIRotationGestureRecognizer *recognizer;
    NSString *feedback;
    double rotation;
    
recognizer=(UIRotationGestureRecognizer *)sender;
rotation=recognizer.rotation;
feedback=[[NSString alloc]initWithFormat:@"Rotated, Radians:%1.2f, Velocity:%1.2f",recognizer.rotation, recognizer.velocity];
    label.text=feedback;
    image.transform = CGAffineTransformMakeRotation(rotation);
}
- (IBAction)foundswipe:(id)sender {
    [label setText:@"Swiped"];
}
@end
