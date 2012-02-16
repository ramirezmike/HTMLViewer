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

-(void)awakeFromNib {
	NSError *err = nil;
	filePath = @"index.html";
	if (![[NSFileManager defaultManager]
		 fileExistsAtPath:filePath]) {
		[[NSFileManager defaultManager] 
		 createFileAtPath:@"index.html" 
		 contents:nil attributes:nil];
	}

	mString = [NSString 
			   stringWithContentsOfFile:filePath 
			   encoding:NSUTF8StringEncoding error:&err];
	[textView setString:mString];
	NSURL *url = [NSURL fileURLWithPath:filePath];
	[[webView mainFrame] loadHTMLString:mString baseURL:url];
}


-(void)textDidChange:(NSNotification *)pNotification
{	
	mString = [textView string];
	NSURL *url = [NSURL fileURLWithPath:filePath];
	[[webView mainFrame] loadHTMLString:mString baseURL:url];
}


-(IBAction) save:(id)sender {
	NSError *err = nil;
	mString = [textView string];
	if (![mString writeToFile:filePath 
			atomically:YES 
			encoding:NSUTF8StringEncoding error:&err])
	{
		NSLog(@"ERROR");
	}
}

@end
