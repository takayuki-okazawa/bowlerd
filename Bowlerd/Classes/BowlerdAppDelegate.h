//
//  BowlerdAppDelegate.h
//  Bowlerd
//
//  Created by takayuki on 10/10/15.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BowlerdViewController;

@interface BowlerdAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    BowlerdViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet BowlerdViewController *viewController;

@end

