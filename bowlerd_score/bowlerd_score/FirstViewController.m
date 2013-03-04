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

@synthesize rankImage;
@synthesize max;
@synthesize min;
@synthesize last;
@synthesize average;
@synthesize tabBarFirst;

@synthesize frame_1_1;
@synthesize frame_1_2;
@synthesize frame_1_sum;
@synthesize frame_2_1;
@synthesize frame_2_2;
@synthesize frame_2_sum;
@synthesize frame_3_1;
@synthesize frame_3_2;
@synthesize frame_3_sum;
@synthesize frame_4_1;
@synthesize frame_4_2;
@synthesize frame_4_sum;
@synthesize frame_5_1;
@synthesize frame_5_2;
@synthesize frame_5_sum;
@synthesize frame_6_1;
@synthesize frame_6_2;
@synthesize frame_6_sum;
@synthesize frame_7_1;
@synthesize frame_7_2;
@synthesize frame_7_sum;
@synthesize frame_8_1;
@synthesize frame_8_2;
@synthesize frame_8_sum;
@synthesize frame_9_1;
@synthesize frame_9_2;
@synthesize frame_9_sum;
@synthesize frame_10_1;
@synthesize frame_10_2;
@synthesize frame_10_3;
@synthesize frame_10_sum;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    Common *common = [[Common alloc] init];
    [rankImage setImage:[UIImage imageNamed:[common rank]]];
    
    [max setText:[NSString stringWithFormat:@"%d",[common max]]];
    [min setText:[NSString stringWithFormat:@"%d",[common min]]];
    [last setText:[NSString stringWithFormat:@"%d",[common lastScore]]];
    [average setText:[NSString stringWithFormat:@"%d",[common average]]];
    
    NSArray *gameScoreArray = [[NSArray alloc] initWithArray:[common gameScore]];
    
    [frame_1_1 setText:[gameScoreArray objectAtIndex:0]];
    [frame_1_2 setText:[gameScoreArray objectAtIndex:1]];
    [frame_1_sum setText:[gameScoreArray objectAtIndex:2]];
    
    [frame_2_1 setText:[gameScoreArray objectAtIndex:3]];
    [frame_2_2 setText:[gameScoreArray objectAtIndex:4]];
    [frame_2_sum setText:[gameScoreArray objectAtIndex:5]];
    
    [frame_3_1 setText:[gameScoreArray objectAtIndex:6]];
    [frame_3_2 setText:[gameScoreArray objectAtIndex:7]];
    [frame_3_sum setText:[gameScoreArray objectAtIndex:8]];
    
    [frame_4_1 setText:[gameScoreArray objectAtIndex:9]];
    [frame_4_2 setText:[gameScoreArray objectAtIndex:10]];
    [frame_4_sum setText:[gameScoreArray objectAtIndex:11]];
    
    [frame_5_1 setText:[gameScoreArray objectAtIndex:12]];
    [frame_5_2 setText:[gameScoreArray objectAtIndex:13]];
    [frame_5_sum setText:[gameScoreArray objectAtIndex:14]];
    
    [frame_6_1 setText:[gameScoreArray objectAtIndex:15]];
    [frame_6_2 setText:[gameScoreArray objectAtIndex:16]];
    [frame_6_sum setText:[gameScoreArray objectAtIndex:17]];
    
    [frame_7_1 setText:[gameScoreArray objectAtIndex:18]];
    [frame_7_2 setText:[gameScoreArray objectAtIndex:19]];
    [frame_7_sum setText:[gameScoreArray objectAtIndex:20]];
    
    [frame_8_1 setText:[gameScoreArray objectAtIndex:21]];
    [frame_8_2 setText:[gameScoreArray objectAtIndex:22]];
    [frame_8_sum setText:[gameScoreArray objectAtIndex:23]];
    
    [frame_9_1 setText:[gameScoreArray objectAtIndex:24]];
    [frame_9_2 setText:[gameScoreArray objectAtIndex:25]];
    [frame_9_sum setText:[gameScoreArray objectAtIndex:26]];
    
    [frame_10_1 setText:[gameScoreArray objectAtIndex:27]];
    [frame_10_2 setText:[gameScoreArray objectAtIndex:28]];
    [frame_10_3 setText:[gameScoreArray objectAtIndex:29]];
    [frame_10_sum setText:[gameScoreArray objectAtIndex:30]];
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
    [self setTabBarFirst:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController{
    [self viewDidLoad];
    return YES;
}

@end
