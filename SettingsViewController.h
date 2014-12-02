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

// UITableViewDelegate: Définit la structure de la table.
// UITableViewDataSource: Définit l'apparence de la table.
@interface SettingsViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) NSMutableArray* joueurs;
//@property (weak, nonatomic) IBOutlet
@property (weak, nonatomic) IBOutlet UITableView* tableView;
@property (readwrite, strong) id delegate;

//-(int) nbJoueur;
-(int) nbTours;

-(IBAction)finish;
@end
