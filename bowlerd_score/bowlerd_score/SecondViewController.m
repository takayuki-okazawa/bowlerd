//
//  SecondViewController.m
//  bowlerd_score
//
//  Created by takayuki on 13/02/08.
//  Copyright (c) 2013年 takayuki. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize frameNo;
@synthesize score1;
@synthesize score2;
@synthesize score3;
@synthesize scoreSum;
@synthesize lastScoer;
@synthesize frame;
@synthesize endButton;
@synthesize allowRight;
@synthesize strike;
@synthesize spare;
@synthesize strike2;
@synthesize strike3;
@synthesize spare2;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    page = 0;
    select_area = 0;
    editGameScoreArray = [[NSMutableArray alloc] initWithObjects:
                          @"0",@"0",@"0",
                          @"0",@"0",@"0",
                          @"0",@"0",@"0",
                          @"0",@"0",@"0",
                          @"0",@"0",@"0",
                          @"0",@"0",@"0",
                          @"0",@"0",@"0",
                          @"0",@"0",@"0",
                          @"0",@"0",@"0",
                          @"0",@"0",@"0",@"0",nil];
    
    [score1 setText:[editGameScoreArray objectAtIndex:0]];
    [score2 setText:[editGameScoreArray objectAtIndex:1]];
    [scoreSum setText:[editGameScoreArray objectAtIndex:2]];
}

- (void)viewDidUnload
{
    [self setFrameNo:nil];
    [self setScore1:nil];
    [self setScore2:nil];
    [self setScoreSum:nil];
    [self setLastScoer:nil];
    [self setFrame:nil];
    [self setScore3:nil];
    [self setEndButton:nil];
    [self setAllowRight:nil];
    [self setStrike:nil];
    [self setSpare:nil];
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

- (IBAction)back:(id)sender {
    if(0<page && [self is10over]){
        --page;
        select_area = 0;
        [frameNo setImage:[UIImage imageNamed:[NSString stringWithFormat:@"n%d.png", page+1]]];
        [frameNo setContentMode:UIViewContentModeCenter];
        [self changeFrame:page];
        [self changePoint];
    }
    else if (![self is10over]){
        [self is10overMessage];
    }
}

- (IBAction)next:(id)sender {
    if(9>page && [self is10over]){
        ++page;
        select_area = 0;
        [frameNo setImage:[UIImage imageNamed:[NSString stringWithFormat:@"n%d.png", page+1]]];
        [frameNo setContentMode:UIViewContentModeCenter];
        [self changeFrame:page];
        [self changePoint];
    }
    else if (![self is10over]){
        [self is10overMessage];
    }
}

- (IBAction)save:(id)sender {

    Common *common = [[Common alloc] init];
    [common setGameScore:editGameScoreArray];
    
    int point = [[editGameScoreArray objectAtIndex:2] intValue];
    point += [[editGameScoreArray objectAtIndex:5] intValue];
    point += [[editGameScoreArray objectAtIndex:8] intValue];
    point += [[editGameScoreArray objectAtIndex:11] intValue];
    point += [[editGameScoreArray objectAtIndex:14] intValue];
    point += [[editGameScoreArray objectAtIndex:17] intValue];
    point += [[editGameScoreArray objectAtIndex:20] intValue];
    point += [[editGameScoreArray objectAtIndex:23] intValue];
    point += [[editGameScoreArray objectAtIndex:26] intValue];
    point += [[editGameScoreArray objectAtIndex:30] intValue];
    
    [common setMax:point];
    [common setMin:point];
    [common setLastScore:point];
    [common setAverage:point];
    
}

- (IBAction)load:(id)sender {
    Common *common = [[Common alloc] init];
    editGameScoreArray = [[NSMutableArray alloc] initWithArray:[common getGameScore]];
}

- (IBAction)point_0:(id)sender {
    [self editSelectErea:0];
    [self cangeSelectErea];
}

- (IBAction)point_1:(id)sender {
    [self editSelectErea:1];
    [self cangeSelectErea];
}

- (IBAction)point_2:(id)sender {
    [self editSelectErea:2];
    [self cangeSelectErea];
}

- (IBAction)point_3:(id)sender {
    [self editSelectErea:3];
    [self cangeSelectErea];
}

- (IBAction)point_4:(id)sender {
    [self editSelectErea:4];
    [self cangeSelectErea];
}

- (IBAction)point_5:(id)sender {
    [self editSelectErea:5];
    [self cangeSelectErea];
}

- (IBAction)point_6:(id)sender {
    [self editSelectErea:6];
    [self cangeSelectErea];
}

- (IBAction)point_7:(id)sender {
    [self editSelectErea:7];
    [self cangeSelectErea];
}

- (IBAction)point_8:(id)sender {
    [self editSelectErea:8];
    [self cangeSelectErea];
}

- (IBAction)point_9:(id)sender {
    [self editSelectErea:9];
    [self cangeSelectErea];
}

- (IBAction)point_10:(id)sender {
    [self editSelectErea:10];
    [self cangeSelectErea];
}


#pragma mark -
#pragma mark Private Message

- (void)changeFrame:(int)nowFrame {
    
    [score3 setHidden:YES];
    [endButton setHidden:YES];
    [allowRight setHidden:NO];
    [frame setImage:[UIImage imageNamed:@"frame.png"]];
    [scoreSum setFrame:CGRectMake(121, scoreSum.frame.origin.y, scoreSum.frame.size.width, scoreSum.frame.size.height)];
    
    if(0 == nowFrame){
        [score1 setText:[editGameScoreArray objectAtIndex:0]];
        [score2 setText:[editGameScoreArray objectAtIndex:1]];
        [scoreSum setText:[editGameScoreArray objectAtIndex:2]];
    }
    else if(1 == nowFrame){
        [score1 setText:[editGameScoreArray objectAtIndex:3]];
        [score2 setText:[editGameScoreArray objectAtIndex:4]];
        [scoreSum setText:[editGameScoreArray objectAtIndex:5]];
    }
    else if(2 == nowFrame){
        [score1 setText:[editGameScoreArray objectAtIndex:6]];
        [score2 setText:[editGameScoreArray objectAtIndex:7]];
        [scoreSum setText:[editGameScoreArray objectAtIndex:8]];
    }
    else if(3 == nowFrame){
        [score1 setText:[editGameScoreArray objectAtIndex:9]];
        [score2 setText:[editGameScoreArray objectAtIndex:10]];
        [scoreSum setText:[editGameScoreArray objectAtIndex:11]];
    }
    else if(4 == nowFrame){
        [score1 setText:[editGameScoreArray objectAtIndex:12]];
        [score2 setText:[editGameScoreArray objectAtIndex:13]];
        [scoreSum setText:[editGameScoreArray objectAtIndex:14]];
    }
    else if(5 == nowFrame){
        [score1 setText:[editGameScoreArray objectAtIndex:15]];
        [score2 setText:[editGameScoreArray objectAtIndex:16]];
        [scoreSum setText:[editGameScoreArray objectAtIndex:17]];
    }
    else if(6 == nowFrame){
        [score1 setText:[editGameScoreArray objectAtIndex:18]];
        [score2 setText:[editGameScoreArray objectAtIndex:19]];
        [scoreSum setText:[editGameScoreArray objectAtIndex:20]];
    }
    else if(7 == nowFrame){
        [score1 setText:[editGameScoreArray objectAtIndex:21]];
        [score2 setText:[editGameScoreArray objectAtIndex:22]];
        [scoreSum setText:[editGameScoreArray objectAtIndex:23]];
    }
    else if(8 == nowFrame){
        [score1 setText:[editGameScoreArray objectAtIndex:24]];
        [score2 setText:[editGameScoreArray objectAtIndex:25]];
        [scoreSum setText:[editGameScoreArray objectAtIndex:26]];
    }
    else if(9 == nowFrame){
        [score1 setText:[editGameScoreArray objectAtIndex:27]];
        [score2 setText:[editGameScoreArray objectAtIndex:28]];
        [score3 setText:[editGameScoreArray objectAtIndex:29]];
        [scoreSum setText:[editGameScoreArray objectAtIndex:30]];
        [frame setImage:[UIImage imageNamed:@"frame_last.png"]];
        [scoreSum setFrame:CGRectMake(150, scoreSum.frame.origin.y, scoreSum.frame.size.width, scoreSum.frame.size.height)];
        [score3 setHidden:NO];
    }
}

-(BOOL)is10over{
    BOOL flag = YES;
    int point1 = [score1.text intValue];
    int point2 = [score2.text intValue];
    if(10 < (point1+point2)){
        flag = NO;
    }
    return flag;
}

-(void)is10overMessage{
    
    UIAlertView *alert =
    [[UIAlertView alloc]
     initWithTitle:@"10 Over"
     message:@"Need Edit Points"
     delegate:nil
     cancelButtonTitle:nil
     otherButtonTitles:@"OK", nil];
    
    [alert show];
}

- (void)cangeSelectErea{
    if(1 == select_area && 9 == page){
        select_area = 2;
    }
    else if(2 == select_area){
        select_area = 0;
    }
    else if(0 == select_area){
        select_area = 1;
    }
    else{
        select_area = 0;
    }
}

- (void)editSelectErea:(int)point{
    
    if(1 == select_area && 9 == page){
        [score2 setText:[NSString stringWithFormat:@"%d",point]];
        [editGameScoreArray replaceObjectAtIndex:28 withObject:[NSString stringWithFormat:@"%d", point]];
        
        int point1 = [score1.text intValue];
        int point2 = [score2.text intValue];
        int point3 = [score3.text intValue];
        int point4 = point1+point2+point3;
        [editGameScoreArray replaceObjectAtIndex:30 withObject:[NSString stringWithFormat:@"%d", point4]];
        
        [self changePoint];
    }
    else if(2 == select_area){
        [score3 setText:[NSString stringWithFormat:@"%d",point]];
        [editGameScoreArray replaceObjectAtIndex:29 withObject:[NSString stringWithFormat:@"%d", point]];
        
        int point1 = [score1.text intValue];
        int point2 = [score2.text intValue];
        int point3 = [score3.text intValue];
        int point4 = point1+point2+point3;
        [editGameScoreArray replaceObjectAtIndex:30 withObject:[NSString stringWithFormat:@"%d", point4]];
        
        [self changePoint];
    }
    else if(0 == select_area){
        [score1 setText:[NSString stringWithFormat:@"%d",point]];
        
        if(10 == point){
            [score2 setText:@"0"];
        }
        
        int point1 = point;
        int point2 = [score2.text intValue];
        int point3 = point1+point2;
        
        if(0 == page){
            [editGameScoreArray replaceObjectAtIndex:0 withObject:[NSString stringWithFormat:@"%d", point]];
            [editGameScoreArray replaceObjectAtIndex:2 withObject:[NSString stringWithFormat:@"%d", point3]];
        }
        else if(1 == page){
            [editGameScoreArray replaceObjectAtIndex:3 withObject:[NSString stringWithFormat:@"%d", point]];
            [editGameScoreArray replaceObjectAtIndex:5 withObject:[NSString stringWithFormat:@"%d", point3]];
        }
        else if(2 == page){
            [editGameScoreArray replaceObjectAtIndex:6 withObject:[NSString stringWithFormat:@"%d", point]];
            [editGameScoreArray replaceObjectAtIndex:8 withObject:[NSString stringWithFormat:@"%d", point3]];
        }
        else if(3 == page){
            [editGameScoreArray replaceObjectAtIndex:9 withObject:[NSString stringWithFormat:@"%d", point]];
            [editGameScoreArray replaceObjectAtIndex:11 withObject:[NSString stringWithFormat:@"%d", point3]];
        }
        else if(4 == page){
            [editGameScoreArray replaceObjectAtIndex:12 withObject:[NSString stringWithFormat:@"%d", point]];
            [editGameScoreArray replaceObjectAtIndex:14 withObject:[NSString stringWithFormat:@"%d", point3]];
        }
        else if(5 == page){
            [editGameScoreArray replaceObjectAtIndex:15 withObject:[NSString stringWithFormat:@"%d", point]];
            [editGameScoreArray replaceObjectAtIndex:17 withObject:[NSString stringWithFormat:@"%d", point3]];
        }
        else if(6 == page){
            [editGameScoreArray replaceObjectAtIndex:18 withObject:[NSString stringWithFormat:@"%d", point]];
            [editGameScoreArray replaceObjectAtIndex:20 withObject:[NSString stringWithFormat:@"%d", point3]];
        }
        else if(7 == page){
            [editGameScoreArray replaceObjectAtIndex:21 withObject:[NSString stringWithFormat:@"%d", point]];
            [editGameScoreArray replaceObjectAtIndex:23 withObject:[NSString stringWithFormat:@"%d", point3]];
        }
        else if(8 == page){
            [editGameScoreArray replaceObjectAtIndex:24 withObject:[NSString stringWithFormat:@"%d", point]];
            [editGameScoreArray replaceObjectAtIndex:26 withObject:[NSString stringWithFormat:@"%d", point3]];
        }
        else if(9 == page){
            int pointSum = point3 + [score3.text intValue];
            [editGameScoreArray replaceObjectAtIndex:27 withObject:[NSString stringWithFormat:@"%d", point]];
            [editGameScoreArray replaceObjectAtIndex:30 withObject:[NSString stringWithFormat:@"%d", pointSum]];
        }
        
        [self changePoint];
    }
    else{
        
        int point1 = [score1.text intValue];
        int point2 = point;
        
        if(10 == point1){
            point = 0;
            point2 = 0;
        }
        
        [score2 setText:[NSString stringWithFormat:@"%d",point]];
        int point3 = point1+point2;
        
        if(0 == page){
            [editGameScoreArray replaceObjectAtIndex:1 withObject:[NSString stringWithFormat:@"%d", point]];
            [editGameScoreArray replaceObjectAtIndex:2 withObject:[NSString stringWithFormat:@"%d", point3]];
        }
        else if(1 == page){
            [editGameScoreArray replaceObjectAtIndex:4 withObject:[NSString stringWithFormat:@"%d", point]];
            [editGameScoreArray replaceObjectAtIndex:5 withObject:[NSString stringWithFormat:@"%d", point3]];
        }
        else if(2 == page){
            [editGameScoreArray replaceObjectAtIndex:7 withObject:[NSString stringWithFormat:@"%d", point]];
            [editGameScoreArray replaceObjectAtIndex:8 withObject:[NSString stringWithFormat:@"%d", point3]];
        }
        else if(3 == page){
            [editGameScoreArray replaceObjectAtIndex:10 withObject:[NSString stringWithFormat:@"%d", point]];
            [editGameScoreArray replaceObjectAtIndex:11 withObject:[NSString stringWithFormat:@"%d", point3]];
        }
        else if(4 == page){
            [editGameScoreArray replaceObjectAtIndex:13 withObject:[NSString stringWithFormat:@"%d", point]];
            [editGameScoreArray replaceObjectAtIndex:14 withObject:[NSString stringWithFormat:@"%d", point3]];
        }
        else if(5 == page){
            [editGameScoreArray replaceObjectAtIndex:16 withObject:[NSString stringWithFormat:@"%d", point]];
            [editGameScoreArray replaceObjectAtIndex:17 withObject:[NSString stringWithFormat:@"%d", point3]];
        }
        else if(6 == page){
            [editGameScoreArray replaceObjectAtIndex:19 withObject:[NSString stringWithFormat:@"%d", point]];
            [editGameScoreArray replaceObjectAtIndex:20 withObject:[NSString stringWithFormat:@"%d", point3]];
        }
        else if(7 == page){
            [editGameScoreArray replaceObjectAtIndex:22 withObject:[NSString stringWithFormat:@"%d", point]];
            [editGameScoreArray replaceObjectAtIndex:23 withObject:[NSString stringWithFormat:@"%d", point3]];
        }
        else if(8 == page){
            [editGameScoreArray replaceObjectAtIndex:25 withObject:[NSString stringWithFormat:@"%d", point]];
            [editGameScoreArray replaceObjectAtIndex:26 withObject:[NSString stringWithFormat:@"%d", point3]];
        }
        else if(9 == page){
            int pointSum = point3 + [score3.text intValue];
            [editGameScoreArray replaceObjectAtIndex:28 withObject:[NSString stringWithFormat:@"%d", point]];
            [editGameScoreArray replaceObjectAtIndex:30 withObject:[NSString stringWithFormat:@"%d", pointSum]];
        }
        
        [self changePoint];
    }
    
}

- (void) changePoint{
    
    if(9 == page){
        
        //Strike
        int now_point1 = [score1.text intValue];
        int now_point2 = [score2.text intValue];
        int now_point3 = [score3.text intValue];
        
        BOOL strikeFlag1 = NO;
        BOOL strikeFlag2 = NO;
        
        if(10 == now_point1){
            [strike setHidden:NO];
            [score1 setHidden:YES];
            [spare setHidden:YES];
            strikeFlag1 = YES;
        }
        else{
            [strike setHidden:YES];
            [score1 setHidden:NO];
        }
        
        if(10 == now_point2){
            [strike2 setHidden:NO];
            [score2 setHidden:YES];
            [spare2 setHidden:YES];
            strikeFlag1 = YES;
        }
        else{
            [strike2 setHidden:YES];
            [score2 setHidden:NO];
        }
        
        if(10 == now_point3){
            [strike3 setHidden:NO];
            [score3 setHidden:YES];
            strikeFlag2 = YES;
        }
        else{
            [strike3 setHidden:YES];
            [score3 setHidden:NO];
        }
        
        //Spere
        now_point2 = [score2.text intValue];
        now_point3 = [score3.text intValue];
        BOOL spareFlag = NO;
        if(10 == now_point1+now_point2 && !strikeFlag1){
            [spare setHidden:NO];
            [score2 setHidden:YES];
            spareFlag = YES;
        }
        else if(!strikeFlag1){
            [spare setHidden:YES];
            [score2 setHidden:NO];
        }
        
        if(10 == now_point2+now_point3 && !strikeFlag2 && !spareFlag){
            [spare2 setHidden:NO];
            [score3 setHidden:YES];
        }
        else if(!strikeFlag2){
            [spare2 setHidden:YES];
            [score3 setHidden:NO];
        }


    }
    else{
        //Strike
        int now_point1 = [score1.text intValue];
        BOOL strikeFlag = NO;
        
        if(10 == now_point1){
            [strike setHidden:NO];
            [spare setHidden:YES];
            [score1 setHidden:YES];
            [score2 setHidden:YES];
            strikeFlag = YES;
        }
        else{
            [strike setHidden:YES];
            [score1 setHidden:NO];
        }
        
        //Spere
        int now_point2 = [score2.text intValue];
        if(10 == now_point1+now_point2 && !strikeFlag){
            [spare setHidden:NO];
            [score2 setHidden:YES];
        }
        else if(!strikeFlag){
            [spare setHidden:YES];
            [score2 setHidden:NO];
        }
        
    }
    
    
    //Sum Points
    int point1 = [[editGameScoreArray objectAtIndex:2] intValue];
    int point2 = [[editGameScoreArray objectAtIndex:5] intValue];
    int point3 = [[editGameScoreArray objectAtIndex:8] intValue];
    int point4 = [[editGameScoreArray objectAtIndex:11] intValue];
    int point5 = [[editGameScoreArray objectAtIndex:14] intValue];
    int point6 = [[editGameScoreArray objectAtIndex:17] intValue];
    int point7 = [[editGameScoreArray objectAtIndex:20] intValue];
    int point8 = [[editGameScoreArray objectAtIndex:23] intValue];
    int point9 = [[editGameScoreArray objectAtIndex:26] intValue];
    int point10 = [[editGameScoreArray objectAtIndex:30] intValue];
    
    int sum;
    if(0 == page){
        sum = point1;
    }
    else if(1 == page){
        sum = point1 +point2;
    }
    else if(2 == page){
        sum = point1 +point2 +point3;
    }
    else if(3 == page){
        sum = point1 +point2 +point3 +point4;
    }
    else if(4 == page){
        sum = point1 +point2 +point3 +point4 +point5;
    }
    else if(5 == page){
        sum = point1 +point2 +point3 +point4 +point5 +point6;
    }
    else if(6 == page){
        sum = point1 +point2 +point3 +point4 +point5 +point6 +point7;
    }
    else if(7 == page){
        sum = point1 +point2 +point3 +point4 +point5 +point6 +point7 +point8;
    }
    else if(8 == page){
        sum = point1 +point2 +point3 +point4 +point5 +point6 +point7 +point8 +point9;
    }
    else if(9 == page){
        sum = point1 +point2 +point3 +point4 +point5 +point6 +point7 +point8 +point9 +point10;
    }

    [scoreSum setText:[NSString stringWithFormat:@"%d",sum]];
    [self bonusPoint];
}


/*
 * Strike & Spare
 *
 */
- (void)bonusPoint{
    
    // Frame1
    int point1 = [[editGameScoreArray objectAtIndex:0] intValue];
    int point2 = [[editGameScoreArray objectAtIndex:3] intValue];
    int point3 = [[editGameScoreArray objectAtIndex:6] intValue];
    int point4 = [[editGameScoreArray objectAtIndex:9] intValue];
    int point5 = [[editGameScoreArray objectAtIndex:12] intValue];
    int point6 = [[editGameScoreArray objectAtIndex:15] intValue];
    int point7 = [[editGameScoreArray objectAtIndex:18] intValue];
    int point8 = [[editGameScoreArray objectAtIndex:21] intValue];
    int point9 = [[editGameScoreArray objectAtIndex:24] intValue];
    int point10 = [[editGameScoreArray objectAtIndex:27] intValue];
    
    // Frame2
    int point11 = [[editGameScoreArray objectAtIndex:1] intValue];
    int point12 = [[editGameScoreArray objectAtIndex:4] intValue];
    int point13 = [[editGameScoreArray objectAtIndex:7] intValue];
    int point14 = [[editGameScoreArray objectAtIndex:10] intValue];
    int point15 = [[editGameScoreArray objectAtIndex:13] intValue];
    int point16 = [[editGameScoreArray objectAtIndex:16] intValue];
    int point17 = [[editGameScoreArray objectAtIndex:19] intValue];
    int point18 = [[editGameScoreArray objectAtIndex:22] intValue];
    int point19 = [[editGameScoreArray objectAtIndex:25] intValue];
    int point20 = [[editGameScoreArray objectAtIndex:28] intValue];
    
    //Frame3
    int point21 = [[editGameScoreArray objectAtIndex:2] intValue];
    int point22 = [[editGameScoreArray objectAtIndex:5] intValue];
    int point23 = [[editGameScoreArray objectAtIndex:8] intValue];
    int point24 = [[editGameScoreArray objectAtIndex:11] intValue];
    int point25 = [[editGameScoreArray objectAtIndex:14] intValue];
    int point26 = [[editGameScoreArray objectAtIndex:17] intValue];
    int point27 = [[editGameScoreArray objectAtIndex:20] intValue];
    int point28 = [[editGameScoreArray objectAtIndex:23] intValue];
    int point29 = [[editGameScoreArray objectAtIndex:26] intValue];
    int point30 = [[editGameScoreArray objectAtIndex:29] intValue];
    
    //Frame4
    int point31 = [[editGameScoreArray objectAtIndex:30] intValue];
    
    if(10 == point1){
        point21 = 10 + point2;
        if(10 == point2){
            point21 += point3;
        }
        else{
            point21 += point12;
        }
        [editGameScoreArray replaceObjectAtIndex:2 withObject:[NSString stringWithFormat:@"%d", point21]];
    }
    if(10 == point2){
        point22 = 10 + point3;
        if(10 == point3){
            point22 += point4;
        }
        else{
            point22 += point13;
        }
        [editGameScoreArray replaceObjectAtIndex:5 withObject:[NSString stringWithFormat:@"%d", point22]];
    }
    if(10 == point3){
        point23 = 10 + point4;
        if(10 == point4){
            point23 += point5;
        }
        else{
            point23 += point14;
        }
        [editGameScoreArray replaceObjectAtIndex:8 withObject:[NSString stringWithFormat:@"%d", point23]];
    }
    if(10 == point4){
        point24 = 10 + point5;
        if(10 == point5){
            point24 += point6;
        }
        else{
            point24 += point14;
        }
        [editGameScoreArray replaceObjectAtIndex:11 withObject:[NSString stringWithFormat:@"%d", point24]];
    }
    if(10 == point5){
        point25= 10 + point6;
        if(10 == point6){
            point25 += point7;
        }
        else{
            point25 += point15;
        }
        [editGameScoreArray replaceObjectAtIndex:14 withObject:[NSString stringWithFormat:@"%d", point25]];
    }
    if(10 == point6){
        point26= 10 + point7;
        if(10 == point7){
            point26 += point8;
        }
        else{
            point26 += point16;
        }
        [editGameScoreArray replaceObjectAtIndex:17 withObject:[NSString stringWithFormat:@"%d", point26]];

    }
    if(10 == point7){
        point27= 10 + point8;
        if(10 == point8){
            point27 += point9;
        }
        else{
            point27 += point17;
        }
        [editGameScoreArray replaceObjectAtIndex:20 withObject:[NSString stringWithFormat:@"%d", point27]];
    }
    if(10 == point8){
        point28= 10 + point9;
        if(10 == point9){
            point28 += point10;
        }
        else{
            point28 += point18;
        }
        [editGameScoreArray replaceObjectAtIndex:23 withObject:[NSString stringWithFormat:@"%d", point28]];
    }
    if(10 == point9){
        point29= 10 + point10;
        if(10 == point10){
            point29 += point11;
        }
        else{
            point29 += point19;
        }
        [editGameScoreArray replaceObjectAtIndex:26 withObject:[NSString stringWithFormat:@"%d", point29]];
    }
    if(10 == point10){
        point30= 10 + point11;
        if(10 == point11){
            point30 += point12;
        }
        else{
            point30 += point20;
        }
        [editGameScoreArray replaceObjectAtIndex:29 withObject:[NSString stringWithFormat:@"%d", point30]];
    }

}

@end
