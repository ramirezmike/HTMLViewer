//
//  HTMLViewerAppDelegate.m
//  HTMLViewer
//
//  Created by Michael Ramirez on 2/14/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "HTMLViewerAppDelegate.h"
#import "MainWindowController.h"


@class MainWindowController;
@implementation HTMLViewerAppDelegate

-(void) awakeFromNib {
	[self showMainWindow:nil];
}

-(IBAction) showMainWindow:(id)sender {
	if (!mainWin) {
		mainWin = [[MainWindowController alloc]init];
	}
	
	[mainWin setParent:self];
	[mainWin showWindow:nil];
}

-(void) dealloc {
	[mainWin release];
	[super dealloc];
}


@end
