//
//  ___PROJECTNAMEASIDENTIFIER___AppDelegate.m
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.
//

#import "AppDelegate.h"
#import "AppStyleSheet.h"

// Controllers for navigation.
#import "RootViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	[TTStyleSheet setGlobalStyleSheet:[[[AppStyleSheet alloc] init] autorelease]];

	TTNavigator *navigator = [TTNavigator navigator];
	navigator.supportsShakeToReload = YES;
	navigator.persistenceMode = TTNavigatorPersistenceModeAll;
	navigator.window = [[[UIWindow alloc] initWithFrame:TTScreenBounds()] autorelease];

	TTURLMap *map = navigator.URLMap;
	[map from:@"tt://root" toViewController:[RootViewController class]];

	[navigator openURL:@"tt://root" animated:NO];
	[navigator.window makeKeyAndVisible];

	return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {

}

#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	[super dealloc];
}

#pragma mark -
#pragma mark Navigation

- (BOOL)application:(UIApplication*)application handleOpenURL:(NSURL*)URL {
	[[TTNavigator navigator] openURL:URL.absoluteString animated:NO];
	return YES;
}

@end