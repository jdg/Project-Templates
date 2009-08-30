//
//  RootViewController.m
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.
//

#import "RootViewController.h"
#import "Constants.h"
#import "AppDelegate.h"

@implementation RootViewController

- (void) dealloc {
	[super dealloc];
}

- (id) init {
	if (self = [super init]) {
		self.tableViewStyle = UITableViewStyleGrouped;
		self.autoresizesForKeyboard = YES;
	}
	return self;
}

- (void) viewDidUnload {
	[super viewDidUnload];
}

- (void) loadView {
	[super loadView];
}

- (void) createModel {
	
}

@end