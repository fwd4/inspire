//
//  PrefsViewController.h
//  Inspire
//
//  Created by Gareth Jackson on 12/05/2014.
//  Copyright (c) 2014 Gareth Jackson. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PrefsViewController : NSViewController

@property (nonatomic) BOOL firstRun;

@property (nonatomic, strong) NSStatusItem *statusItem;

// Properties of the prefs window
@property (nonatomic, strong) id delegate;
@property (weak) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSButton *useBlackAndWhiteMenuBarIconsCheckbox;

@end
