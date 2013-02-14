//
//  Common.h
//  bowlerd_score
//
//  Created by Takayuki on 13/02/14.
//  Copyright (c) 2013年 takayuki. All rights reserved.
//

#import <Foundation/Foundation.h>

const NSString* DATA_KEY = @"GU3567hGERT7F";

@interface Common : NSObject

@property(nonatomic, readwrite) int rank;
@property(nonatomic, readwrite) int max;
@property(nonatomic, readwrite) int min;
@property(nonatomic, readwrite) int lastScore;
@property(nonatomic, readwrite) int average;
@property(nonatomic, readwrite) NSArray *gameScore;

-(void) setRank:(int)rank;
-(void) setMax:(int)max;
-(void) setMin:(int)min;
-(void) setLastScore:(int)lastScore;
-(void) setAverage:(int)average;
-(void) setGameScore:(NSArray *)gameScore;

@end
