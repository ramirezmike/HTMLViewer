//
//  MainWindowController.h
//
//  Created by Michael Ramirez on 2/15/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MainWindowController : NSWindowController {

	id parent;
	IBOutlet WebView *webView;
	IBOutlet NSTextView *textView;
	NSString *mString;
}

-(void)setParent:(id)sender;
-(IBAction) save:(id)sender;


@end
