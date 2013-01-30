/**
 * Your Copyright Here
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "TiUIWindow+Display.h"
#import "TiUIWindowProxy+Display.h"

@implementation TiUIWindow (TiUIWindow_Display)

-(void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
	if ([self.proxy _hasListeners:@"changelayout"]) {
		NSDictionary *e = [NSDictionary dictionaryWithObjectsAndKeys:
							[NSNumber numberWithFloat:frame.origin.x], @"x",
							[NSNumber numberWithFloat:frame.origin.y], @"y",
							[NSNumber numberWithFloat:frame.size.width], @"width",
							[NSNumber numberWithFloat:frame.size.height], @"height",
							nil];

		[self.proxy fireEvent:@"changelayout" withObject:e];
	}
}

@end
