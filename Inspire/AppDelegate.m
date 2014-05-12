//
//  AppDelegate.m
//  Inspire
//
//  Created by Gareth Jackson on 12/05/2014.
//  Copyright (c) 2014 Gareth Jackson. All rights reserved.
//

#import "AppDelegate.h"
#import "PrefsViewController.h"

@interface AppDelegate()
@property (nonatomic, strong) NSStatusItem *statusItem;
@property (nonatomic, strong) NSMenu *statusBarMenu;
@property (nonatomic, strong) PrefsViewController *pvc;
@end

extern NSString *const InspireAPIKey;
extern NSString *const InspireUsername;
extern NSString *const InspireKey;
extern NSString *const UseBlackAndWhiteMenuBarIconKey;

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    
    self.statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    
    if([prefs boolForKey:UseBlackAndWhiteMenuBarIconKey]) {
        self.statusItem.image = [NSImage imageNamed:@"leaf-black"];
        self.statusItem.alternateImage = [NSImage imageNamed:@"leaf-white"];
    } else {
        self.statusItem.image = [NSImage imageNamed:@"leaf"];
        self.statusItem.alternateImage = [NSImage imageNamed:@"leaf"];
    }
    
    self.statusItem.highlightMode = YES;
    
    [self buildMenu];
    
    self.pvc = [[PrefsViewController alloc] init];
    self.pvc.statusItem = self.statusItem;
    self.pvc.delegate = self;
    
    if( (![prefs objectForKey:InspireAPIKey]) || !([prefs objectForKey:InspireUsername]) ) {
        // No API Key or username found,
        // probably the first time the App has ran
        self.pvc.firstRun = YES;
        [self.pvc.view.window makeKeyAndOrderFront:self];
    }
    
}

- (void)buildMenu
{
    self.statusBarMenu = [[NSMenu alloc] initWithTitle:@"Inspire"];
    
    [self.statusBarMenu addItem:[[NSMenuItem alloc] initWithTitle:@"Boost" action:@selector(inspireBoost) keyEquivalent:@""]];
    [self.statusBarMenu addItem:[NSMenuItem separatorItem]];
    [self.statusBarMenu addItem:[[NSMenuItem alloc] initWithTitle:@"On" action:@selector(inspireOn) keyEquivalent:@""]];
    [self.statusBarMenu addItem:[[NSMenuItem alloc] initWithTitle:@"Off" action:@selector(inspireOff) keyEquivalent:@""]];
    [self.statusBarMenu addItem:[NSMenuItem separatorItem]];
#ifdef DEBUG
    [self.statusBarMenu addItem:[[NSMenuItem alloc] initWithTitle:@"Debug" action:@selector(debug) keyEquivalent:@""]];
#endif
    [self.statusBarMenu addItem:[[NSMenuItem alloc] initWithTitle:@"Preferences..." action:@selector(preferences) keyEquivalent:@""]];
    [self.statusBarMenu addItem:[[NSMenuItem alloc] initWithTitle:@"Quit" action:@selector(terminate:) keyEquivalent:@""]];
    self.statusItem.menu = self.statusBarMenu;
}

- (void)inspireBoost
{
    
}

- (void)inspireOn
{
    
}

- (void)inspireOff
{
    
}

- (void)preferences
{
    
}

- (void)debug
{
    
}
@end