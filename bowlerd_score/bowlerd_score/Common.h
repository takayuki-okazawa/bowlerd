//
//  Common.h
//  bowlerd_score
//
//  Created by Takayuki on 13/02/14.
//  Copyright (c) 2013年 takayuki. All rights reserved.
//

#import <Foundation/Foundation.h>

const NSString* DATA_KEY = @"GU3567hGERT7F";

const NSString* RANK_IMAGE_S = @"s.png";
const NSString* RANK_IMAGE_A = @"a.png";
const NSString* RANK_IMAGE_B = @"b.png";
const NSString* RANK_IMAGE_C = @"c.png";

@interface Common : NSObject

@property(nonatomic, readwrite) NSString *rank;
@property(nonatomic, readwrite) int max;
@property(nonatomic, readwrite) int min;
@property(nonatomic, readwrite) int lastScore;
@property(nonatomic, readwrite) int average;
@property(nonatomic, readwrite) NSArray *gameScore;

-(void) setRank:(NSString *)rank;
-(void) setMax:(int)max;
-(void) setMin:(int)min;
-(void) setLastScore:(int)lastScore;
-(void) setAverage:(int)average;
-(void) setGameScore:(NSArray *)gameScore;

@end
