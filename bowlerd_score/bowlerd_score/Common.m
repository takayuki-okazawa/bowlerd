//
//  Common.m
//  bowlerd_score
//
//  Created by Takayuki on 13/02/14.
//  Copyright (c) 2013年 takayuki. All rights reserved.
//

#import "Common.h"

@implementation Common

-(NSString*) getRank{
    
    NSString *_rank;
    int rankCount = [self getAverage];
    
    if(76 > rankCount){
        _rank = (NSString*)RANK_IMAGE_C;
    }
    else if (151 > rankCount){
        _rank = (NSString*)RANK_IMAGE_B;
    }
    else if (210 > rankCount){
        _rank = (NSString*)RANK_IMAGE_A;
    }
    else if (210 <= rankCount){
        _rank = (NSString*)RANK_IMAGE_S;
    }
    
    return _rank;
}


-(int) getMax{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    int now_max = [ud integerForKey:@"max"];
    return now_max;
}

-(void) setMax:(int)_max{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    int now_max = [ud integerForKey:@"max"];
    
    if(now_max < _max){
        [ud setInteger:_max forKey:@"max"];
    }
}


-(int) getMin{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    int now_min = [ud integerForKey:@"min"];
    return now_min;
}

-(void) setMin:(int)_min{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    int now_min = [ud integerForKey:@"min"];
    
    if(now_min >_min){
        [ud setInteger:_min forKey:@"min"];
    }
    else if (0 == now_min){
        [ud setInteger:_min forKey:@"min"];
    }
}

-(int) getLastScore{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    int _lastScore = [ud integerForKey:@"lastScore"];
    return _lastScore;
}

-(void) setLastScore:(int)_lastScore{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setInteger:_lastScore forKey:@"lastScore"];
}


-(int) getAverage{

    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    NSMutableArray *array = [[ud arrayForKey:@"average"] mutableCopy];
    
    int averageCount = 0;
    
    for(NSString *_averageCount in array){
        averageCount += [_averageCount intValue];
    }
    
    int returnCount;
    
    if(nil == array){
        returnCount = 0;
    }
    else{
        returnCount = averageCount/[array count];
    }
    
    return returnCount;
}

-(void) setAverage:(int)_average{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    NSMutableArray *array = [[ud arrayForKey:@"average"] mutableCopy];
    
    if (nil == array) {
        array = [[NSMutableArray alloc] init];
    }
    [array addObject:[NSString stringWithFormat:@"%d", _average]];
    [ud setObject:array forKey:@"average"];
}


-(NSArray*) getGameScore{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    NSArray *_gameScore = [ud arrayForKey:@"gameScore"];
    
    if(nil == _gameScore || 0 == [_gameScore count]){
        _gameScore = [[NSArray alloc] initWithObjects:
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
    }
    
    return _gameScore;
}

-(void) setGameScore:(NSArray *)_gameScore{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setObject:_gameScore forKey:@"gameScore"];

}

@end
