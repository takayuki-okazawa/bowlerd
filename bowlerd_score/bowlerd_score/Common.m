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
    NSLog(@"%@", [ud stringForKey:@"rank"]);
    [self setRank:[ud stringForKey:@"rank"]];
    [self setMax:[ud integerForKey:@"max"]];
    [self setMin:[ud integerForKey:@"min"]];
    [self setLastScore:[ud integerForKey:@"lastScore"]];
    [self setAverage:[ud integerForKey:@"average"]];
    [self setGameScore:[[NSArray alloc] initWithArray:[ud arrayForKey:@"gameScore"]]];
    
    return self;
}


-(void) setRank:(NSString *)_rank{
    
    if(NULL == _rank){
        _rank = (NSString*)RANK_IMAGE_C;
    }
    rank = _rank;
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setObject:rank forKey:@"rank"];
}


-(void) setMax:(int)_max{
    max = _max;
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setInteger:max forKey:@"max"];
}


-(void) setMin:(int)_min{
    min = _min;
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setInteger:min forKey:@"min"];
}


-(void) setLastScore:(int)_lastScore{
    lastScore = _lastScore;
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setInteger:lastScore forKey:@"lastScore"];
}


-(void) setAverage:(int)_average{
    average = _average;
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setInteger:average forKey:@"average"];
}


-(void) setGameScore:(NSArray *)_gameScore{
    
    if(NULL == _gameScore || 0 == [_gameScore count]){
        _gameScore = [[NSArray alloc] initWithObjects:@"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",
                      @"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",
                      @"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",
                      @"0",nil];
    }
    
    gameScore = [[NSArray alloc] initWithArray: _gameScore];
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setObject:gameScore forKey:@"gameScore"];

}

@end
