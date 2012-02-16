//
//  HTMLViewerAppDelegate.h
//  HTMLViewer
//
//  Created by Michael Ramirez on 2/14/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class MainWindowController;
@interface HTMLViewerAppDelegate : 
NSObject <NSApplicationDelegate> {

@private
	MainWindowController *mainWin;
	
}

-(IBAction) showMainWindow:(id)sender;
-(IBAction) save:(id)sender;


@end
