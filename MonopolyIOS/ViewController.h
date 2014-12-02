//
//  ViewController.h
//  MonopolyIOS
//
//  Created by ummon on 18/11/14.
//  Copyright (c) 2014 hes-so. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Monopoly.h"
#import "SettingsViewController.h"

@interface ViewController : UIViewController <SettingsViewControllerDelegate>

@property(nonatomic,strong) Monopoly* monopoly;
@property(weak) IBOutlet UITextView* txtClassement;

-(void) run;

@end

