//
//  Common.h
//  bowlerd_score
//
//  Created by Takayuki on 13/02/14.
//  Copyright (c) 2013年 takayuki. All rights reserved.
//

#import <Foundation/Foundation.h>

static const NSString* DATA_KEY = @"GU3567hGERT7F";

static const NSString* RANK_IMAGE_S = @"s.png";
static const NSString* RANK_IMAGE_A = @"a.png";
static const NSString* RANK_IMAGE_B = @"b.png";
static const NSString* RANK_IMAGE_C = @"c.png";

static const NSString* FRAME_NO_IMAGE_1 = @"n1.png";
static const NSString* FRAME_NO_IMAGE_2 = @"n2.png";
static const NSString* FRAME_NO_IMAGE_3 = @"n3.png";
static const NSString* FRAME_NO_IMAGE_4 = @"n4.png";
static const NSString* FRAME_NO_IMAGE_5 = @"n5.png";
static const NSString* FRAME_NO_IMAGE_6 = @"n6.png";
static const NSString* FRAME_NO_IMAGE_7 = @"n7.png";
static const NSString* FRAME_NO_IMAGE_8 = @"n8.png";
static const NSString* FRAME_NO_IMAGE_9 = @"n9.png";
static const NSString* FRAME_NO_IMAGE_10 = @"n10.png";

@interface Common : NSObject


-(NSString*) getRank;
-(int) getMax;
-(int) getMin;
-(int) getLastScore;
-(int) getAverage;
-(NSArray*) getGameScore;

-(void) setMax:(int)max;
-(void) setMin:(int)min;
-(void) setLastScore:(int)lastScore;
-(void) setAverage:(int)average;
-(void) setGameScore:(NSArray *)gameScore;

@end
