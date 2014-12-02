//
//  SettingsTableViewController.h
//  MonopolyIOS
//
//  Created by ummon on 25/11/14.
//  Copyright (c) 2014 hes-so. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SettingsViewController;

@protocol SettingsViewControllerDelegate
-(void)settingsDidFinish:(SettingsViewController*) settingsViewController;
@end

@interface SettingsViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (readwrite, strong) NSMutableArray* playerNames;
@property (readwrite, strong) id delegate;
-(IBAction)finish;
@end
