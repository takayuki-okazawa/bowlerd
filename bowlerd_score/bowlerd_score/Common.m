//
//  Common.m
//  bowlerd_score
//
//  Created by Takayuki on 13/02/14.
//  Copyright (c) 2013年 takayuki. All rights reserved.
//

#import "Common.h"

@implementation Common

@synthesize rank;
@synthesize max;
@synthesize min;
@synthesize lastScore;
@synthesize average;
@synthesize gameScore;


-(id) init{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    self.rank = [ud integerForKey:@"rank"];
    self.max = [ud integerForKey:@"max"];
    self.min = [ud integerForKey:@"min"];
    self.lastScore = [ud integerForKey:@"lastScore"];
    self.average = [ud integerForKey:@"average"];
    self.gameScore = [ud arrayForKey:@"gameScore"];
    
    return self;
}


-(void) setRank:(int)rank{
    self.rank = rank;
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setInteger:self.rank forKey:@"rank"];
}


-(void) setMax:(int)max{
    self.max = max;
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setInteger:self.max forKey:@"max"];
}


-(void) setMin:(int)min{
    self.min = min;
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setInteger:self.min forKey:@"min"];
}


-(void) setLastScore:(int)lastScore{
    self.lastScore = lastScore;
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setInteger:self.lastScore forKey:@"lastScore"];
}


-(void) setAverage:(int)average{
    self.average = average;
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setInteger:self.average forKey:@"average"];
}


-(void) setGameScore:(NSArray *)gameScore{
    self.gameScore = gameScore;
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setObject:self.gameScore forKey:@"gameScore"];

}

@end
