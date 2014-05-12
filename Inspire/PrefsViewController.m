//
//  PrefsViewController.m
//  Inspire
//
//  Created by Gareth Jackson on 12/05/2014.
//  Copyright (c) 2014 Gareth Jackson. All rights reserved.
//

#import "PrefsViewController.h"
#import "AppDelegate.h"

NSString *const InspireAPIKey = @"InspireAPIKey";
NSString *const InspireUsername = @"InspireUsername";
NSString *const InspireKey = @"InspireKey";
NSString *const UseBlackAndWhiteMenuBarIconKey = @"UseBlackAndWhiteMenuBarIconKey";

@interface PrefsViewController ()

@end

@implementation PrefsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    return self;
}

@end
