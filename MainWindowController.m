//
//  MainWindowController.m
//
//  Created by Michael Ramirez on 2/15/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "MainWindowController.h"
#import "HTMLViewerAppDelegate.h"

@implementation MainWindowController
NSString *filePath;


-(void)setParent:(id)sender {
	parent = sender;
}

-(id)init {
	self = [super initWithWindowNibName:@"MainWindow"];
	return self;
}




@end
