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

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    page = 0;
    select_area = 0;
    editGameScoreArray = [[NSMutableArray alloc] initWithObjects:@"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",
                               @"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",
                               @"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",
                               @"0",nil];
    
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
    if(0<page){
        --page;
        select_area = 0;
        [frameNo setImage:[UIImage imageNamed:[NSString stringWithFormat:@"n%d.png", page+1]]];
        [frameNo setContentMode:UIViewContentModeCenter];
        [self changeFrame:page];
    }
}

- (IBAction)next:(id)sender {
    if(9>page){
        ++page;
        select_area = 0;
        [frameNo setImage:[UIImage imageNamed:[NSString stringWithFormat:@"n%d.png", page+1]]];
        [frameNo setContentMode:UIViewContentModeCenter];
        [self changeFrame:page];
    }
}

- (IBAction)end:(id)sender {
}

- (IBAction)point_1:(id)sender {
    if([self isPoint:1]){
        [self editSelectErea:1];
        [self cangeSelectErea];
    }
}

- (IBAction)point_2:(id)sender {
    if([self isPoint:2]){
        [self editSelectErea:2];
        [self cangeSelectErea];
    }
}

- (IBAction)point_3:(id)sender {
    if([self isPoint:3]){
        [self editSelectErea:3];
        [self cangeSelectErea];
    }
}

- (IBAction)point_4:(id)sender {
    if([self isPoint:4]){
        [self editSelectErea:4];
        [self cangeSelectErea];
    }
}

- (IBAction)point_5:(id)sender {
    if([self isPoint:5]){
        [self editSelectErea:5];
        [self cangeSelectErea];
    }
}

- (IBAction)point_6:(id)sender {
    if([self isPoint:6]){
        [self editSelectErea:6];
        [self cangeSelectErea];
    }
}

- (IBAction)point_7:(id)sender {
    if([self isPoint:7]){
        [self editSelectErea:7];
        [self cangeSelectErea];
    }}

- (IBAction)point_8:(id)sender {
    if([self isPoint:8]){
        [self editSelectErea:8];
        [self cangeSelectErea];
    }
}

- (IBAction)point_9:(id)sender {
    if([self isPoint:9]){
        [self editSelectErea:9];
        [self cangeSelectErea];
    }
}

- (IBAction)point_10:(id)sender {
    if([self isPoint:10]){
        [self editSelectErea:10];
        [self cangeSelectErea];
    }
}


#pragma mark -
#pragma mark Private Message

-(BOOL)isPoint:(int)point {
    BOOL flag = YES;
    int point1 = [score1.text intValue];
    int point2 = [score2.text intValue];
    
    if(10<(point1+point2+point)){
        flag = NO;
    }
    
    return flag;
}

- (void)changeFrame:(int)nowFrame {
    
    [score3 setHidden:YES];
    [endButton setHidden:YES];
    [allowRight setHidden:NO];
    [frame setImage:[UIImage imageNamed:@"frame.png"]];
    [scoreSum setFrame:CGRectMake(139, scoreSum.frame.origin.y, scoreSum.frame.size.width, scoreSum.frame.size.height)];
    
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
        [scoreSum setFrame:CGRectMake(165, scoreSum.frame.origin.y, scoreSum.frame.size.width, scoreSum.frame.size.height)];
        [score3 setHidden:NO];
        [endButton setHidden:NO];
        [allowRight setHidden:YES];
    }
}

- (void)cangeSelectErea{
    if(1 == select_area && 10 == page){
        select_area = 2;
    }
    else if(0 == select_area){
        select_area = 1;
    }
    else{
        select_area = 0;
    }
}

- (void)editSelectErea:(int)point{
    if(1 == select_area && 10 == page){
        [score3 setText:[NSString stringWithFormat:@"%d",point]];
        [editGameScoreArray replaceObjectAtIndex:29 withObject:[NSString stringWithFormat:@"%d", point]];
        
        int point1 = [score1.text intValue];
        int point2 = [score2.text intValue];
        int point3 = point1+point2;
        [editGameScoreArray replaceObjectAtIndex:30 withObject:[NSString stringWithFormat:@"%d", point3]];
    }
    else if(0 == select_area){
        [score1 setText:[NSString stringWithFormat:@"%d",point]];
        
        if(0 == page){
            [editGameScoreArray replaceObjectAtIndex:0 withObject:[NSString stringWithFormat:@"%d", point]];
        }
        else if(1 == page){
            [editGameScoreArray replaceObjectAtIndex:3 withObject:[NSString stringWithFormat:@"%d", point]];
        }
        else if(2 == page){
            [editGameScoreArray replaceObjectAtIndex:6 withObject:[NSString stringWithFormat:@"%d", point]];
        }
        else if(3 == page){
            [editGameScoreArray replaceObjectAtIndex:9 withObject:[NSString stringWithFormat:@"%d", point]];
        }
        else if(4 == page){
            [editGameScoreArray replaceObjectAtIndex:12 withObject:[NSString stringWithFormat:@"%d", point]];
        }
        else if(5 == page){
            [editGameScoreArray replaceObjectAtIndex:15 withObject:[NSString stringWithFormat:@"%d", point]];
        }
        else if(6 == page){
            [editGameScoreArray replaceObjectAtIndex:18 withObject:[NSString stringWithFormat:@"%d", point]];
        }
        else if(7 == page){
            [editGameScoreArray replaceObjectAtIndex:21 withObject:[NSString stringWithFormat:@"%d", point]];
        }
        else if(8 == page){
            [editGameScoreArray replaceObjectAtIndex:24 withObject:[NSString stringWithFormat:@"%d", point]];
        }
        else if(9 == page){
            [editGameScoreArray replaceObjectAtIndex:27 withObject:[NSString stringWithFormat:@"%d", point]];
        }
        
        [self changePoint];
    }
    else{
        [score2 setText:[NSString stringWithFormat:@"%d",point]];
        
        int point1 = [score1.text intValue];
        int point2 = [score2.text intValue];
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
            [editGameScoreArray replaceObjectAtIndex:28 withObject:[NSString stringWithFormat:@"%d", point]];
        }
        
        [self changePoint];
    }
    
}

- (void) changePoint{
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
    
    int sum = point1 +point2 +point3 +point4 +point5 +point6 +point7 +point8 +point9 +point10;
    [scoreSum setText:[NSString stringWithFormat:@"%d",sum]];
}

@end
