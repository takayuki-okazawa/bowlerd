//
//  SecondViewController.h
//  bowlerd_score
//
//  Created by takayuki on 13/02/08.
//  Copyright (c) 2013年 takayuki. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController{
    @private
    int page;
    int select_area;
    NSMutableArray *editGameScoreArray;
}

@property (weak, nonatomic) IBOutlet UIImageView *frameNo;
@property (weak, nonatomic) IBOutlet UILabel *score1;
@property (weak, nonatomic) IBOutlet UILabel *score2;
@property (weak, nonatomic) IBOutlet UILabel *scoreSum;

@property (weak, nonatomic) IBOutlet UIImageView *lastScoer;

// Button
- (IBAction)back:(id)sender;
- (IBAction)next:(id)sender;


- (IBAction)point_1:(id)sender;
- (IBAction)point_2:(id)sender;
- (IBAction)point_3:(id)sender;
- (IBAction)point_4:(id)sender;
- (IBAction)point_5:(id)sender;
- (IBAction)point_6:(id)sender;
- (IBAction)point_7:(id)sender;
- (IBAction)point_8:(id)sender;
- (IBAction)point_9:(id)sender;
- (IBAction)point_10:(id)sender;

@end
