//
//  FirstViewController.h
//  bowlerd_score
//
//  Created by takayuki on 13/02/08.
//  Copyright (c) 2013年 takayuki. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface FirstViewController : UIViewController<UITabBarControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *rankImage;
@property (weak, nonatomic) IBOutlet UITabBarItem *tabBarFirst;

@property (weak, nonatomic) IBOutlet UILabel *max;
@property (weak, nonatomic) IBOutlet UILabel *min;
@property (weak, nonatomic) IBOutlet UILabel *last;
@property (weak, nonatomic) IBOutlet UILabel *average;

// 1
@property (weak, nonatomic) IBOutlet UILabel *frame_1_1;
@property (weak, nonatomic) IBOutlet UILabel *frame_1_2;
@property (weak, nonatomic) IBOutlet UILabel *frame_1_sum;

// 2
@property (weak, nonatomic) IBOutlet UILabel *frame_2_1;
@property (weak, nonatomic) IBOutlet UILabel *frame_2_2;
@property (weak, nonatomic) IBOutlet UILabel *frame_2_sum;

// 3
@property (weak, nonatomic) IBOutlet UILabel *frame_3_1;
@property (weak, nonatomic) IBOutlet UILabel *frame_3_2;
@property (weak, nonatomic) IBOutlet UILabel *frame_3_sum;

// 4
@property (weak, nonatomic) IBOutlet UILabel *frame_4_1;
@property (weak, nonatomic) IBOutlet UILabel *frame_4_2;
@property (weak, nonatomic) IBOutlet UILabel *frame_4_sum;

// 5
@property (weak, nonatomic) IBOutlet UILabel *frame_5_1;
@property (weak, nonatomic) IBOutlet UILabel *frame_5_2;
@property (weak, nonatomic) IBOutlet UILabel *frame_5_sum;

// 6
@property (weak, nonatomic) IBOutlet UILabel *frame_6_1;
@property (weak, nonatomic) IBOutlet UILabel *frame_6_2;
@property (weak, nonatomic) IBOutlet UILabel *frame_6_sum;

// 7
@property (weak, nonatomic) IBOutlet UILabel *frame_7_1;
@property (weak, nonatomic) IBOutlet UILabel *frame_7_2;
@property (weak, nonatomic) IBOutlet UILabel *frame_7_sum;

// 8
@property (weak, nonatomic) IBOutlet UILabel *frame_8_1;
@property (weak, nonatomic) IBOutlet UILabel *frame_8_2;
@property (weak, nonatomic) IBOutlet UILabel *frame_8_sum;

// 9
@property (weak, nonatomic) IBOutlet UILabel *frame_9_1;
@property (weak, nonatomic) IBOutlet UILabel *frame_9_2;
@property (weak, nonatomic) IBOutlet UILabel *frame_9_sum;

// 10
@property (weak, nonatomic) IBOutlet UILabel *frame_10_1;
@property (weak, nonatomic) IBOutlet UILabel *frame_10_2;
@property (weak, nonatomic) IBOutlet UILabel *frame_10_3;
@property (weak, nonatomic) IBOutlet UILabel *frame_10_sum;

- (IBAction)refrash:(id)sender;

@end
