//
//  ViewController.h
//  gestures
//
//  Created by Mark Dumes on 12/3/13.
//  Copyright (c) 2013 CollegeBlink. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *label;

@property (weak, nonatomic) IBOutlet UIImageView *image;
- (IBAction)foundtap:(id)sender;
- (IBAction)foundpinch:(id)sender;
- (IBAction)foundrotation:(id)sender;
- (IBAction)foundswipe:(id)sender;


@end
