//
//  SettingsTableViewController.m
//  MonopolyIOS
//
//  Created by ummon on 25/11/14.
//  Copyright (c) 2014 hes-so. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    self.playerNames = [NSMutableArray arrayWithObjects:@"Player 1",@"Player 2",nil];
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.playerNames.count;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"protoCell"];
    cell.textLabel.text = [self.playerNames objectAtIndex: indexPath.row];
    return cell;
}

-(IBAction)finish {
    [self.delegate settingsDidFinish:self];
}
@end
