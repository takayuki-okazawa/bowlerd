//
//  BowlerdAppDelegate.m
//  Bowlerd
//
//  Created by takayuki on 10/10/15.
//  Copyright __MyCompanyNamefile://localhost/Users/user/Desktop/Bowlerd/Classes/BowlerdViewController.h__ 2010. All rights reserved.
//

#import "BowlerdAppDelegate.h"
#import "BowlerdViewController.h"

@implementation BowlerdAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
