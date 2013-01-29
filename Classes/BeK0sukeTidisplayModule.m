/**
 * Your Copyright Here
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "BeK0sukeTidisplayModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

@implementation BeK0sukeTidisplayModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"39be45bc-5971-4bfd-9b9a-e1049ac7178c";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"be.k0suke.tidisplay";
}

#pragma mark Lifecycle

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];
	
	NSLog(@"[INFO] %@ loaded",self);
}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably
	
	// you *must* call the superclass
	[super shutdown:sender];
}

#pragma mark Cleanup 

-(void)dealloc
{
	// release any resources that have been retained by the module
	[super dealloc];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}

#pragma mark Listener Notifications

-(void)_listenerAdded:(NSString *)type count:(int)count
{
	if (count == 1 && [type isEqualToString:@"my_event"])
	{
		// the first (of potentially many) listener is being added 
		// for event named 'my_event'
	}
}

-(void)_listenerRemoved:(NSString *)type count:(int)count
{
	if (count == 0 && [type isEqualToString:@"my_event"])
	{
		// the last listener called for event named 'my_event' has
		// been removed, we can optionally clean up any resources
		// since no body is listening at this point for that event
	}
}

#pragma Public APIs

-(id)example:(id)args
{
	// example method
	return @"hello world";
}

-(id)exampleProp
{
	// example property getter
	return @"hello world";
}

-(void)setExampleProp:(id)value
{
	// example property setter
}

-(BOOL)isUIPortrait
{
	UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
	return  UIInterfaceOrientationIsPortrait(orientation);
}

-(id)mainScreenWidth
{
	if ([self isUIPortrait]) {
		return [NSNumber numberWithFloat:[[UIScreen mainScreen] bounds].size.width];
	} else {
		return [NSNumber numberWithFloat:[[UIScreen mainScreen] bounds].size.height];
	}
}

-(id)mainScreenHeight
{
	if ([self isUIPortrait] == NO) {
		return [NSNumber numberWithFloat:[[UIScreen mainScreen] bounds].size.width];
	} else {
		return [NSNumber numberWithFloat:[[UIScreen mainScreen] bounds].size.height];
	}
}

-(id)applicationFrameWidth
{
	if ([self isUIPortrait]) {
		return [NSNumber numberWithFloat:[[UIScreen mainScreen] applicationFrame].size.width];
	} else {
		return [NSNumber numberWithFloat:[[UIScreen mainScreen] applicationFrame].size.height];
	}
}

-(id)applicationFrameHeight
{
	if ([self isUIPortrait] == NO) {
		return [NSNumber numberWithFloat:[[UIScreen mainScreen] applicationFrame].size.width];
	} else {
		return [NSNumber numberWithFloat:[[UIScreen mainScreen] applicationFrame].size.height];
	}
}

@end
