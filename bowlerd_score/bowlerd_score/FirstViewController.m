//
//  FirstViewController.m
//  bowlerd_score
//
//  Created by takayuki on 13/02/08.
//  Copyright (c) 2013年 takayuki. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setRankImage:nil];
    [self setMax:nil];
    [self setMin:nil];
    [self setAverage:nil];
    [self setFrame_1_1:nil];
    [self setFrame_1_2:nil];
    [self setFrame_1_sum:nil];
    [self setFrame_2_1:nil];
    [self setFrame_2_2:nil];
    [self setFrame_2_sum:nil];
    [self setFrame_3_1:nil];
    [self setFrame_3_2:nil];
    [self setFrame_3_sum:nil];
    [self setFrame_4_1:nil];
    [self setFrame_4_2:nil];
    [self setFrame_4_sum:nil];
    [self setFrame_5_1:nil];
    [self setFrame_5_2:nil];
    [self setFrame_5_sum:nil];
    [self setFrame_6_1:nil];
    [self setFrame_6_2:nil];
    [self setFrame_6_sum:nil];
    [self setFrame_7_1:nil];
    [self setFrame_7_2:nil];
    [self setFrame_7_sum:nil];
    [self setFrame_8_1:nil];
    [self setFrame_8_2:nil];
    [self setFrame_8_sum:nil];
    [self setFrame_9_1:nil];
    [self setFrame_9_2:nil];
    [self setFrame_9_sum:nil];
    [self setFrame_10_1:nil];
    [self setFrame_10_2:nil];
    [self setFrame_10_3:nil];
    [self setFrame_10_sum:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
