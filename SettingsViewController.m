//
//  SettingsTableViewController.m
//  MonopolyIOS
//
//  Created by ummon on 25/11/14.
//  Copyright (c) 2014 hes-so. All rights reserved.
//

#import "SettingsViewController.h"
#import "Joueur.h"
#inport "JoueurViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

-(void)viewDidLoad {
    // La barre en haut.
    UIBarButtonItem* editButton =
        [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(editTableView:)]; // Fini par ':' -> méthode à plusieurs.

    UIBarButtonItem* addButton=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                                            target: self action:@selector(addPlayer)];
    
    self.navigationItem.rightBarButtonItems = [NSArray arrayWithObjects:editButton, addButton, nil];
    
    Joueur* joueur1 = [[Joueur alloc]init];
    joueur1.nom = @"Joueur 1";
    Joueur* joueur2 = [[Joueur alloc]init];
    joueur2.nom = @"Joueur 2";
    Joueur* joueur3 = [[Joueur alloc]init];
    joueur3.nom = @"Joueur 3";
    
    self.joueurs=[NSMutableArray arrayWithObjects:joueur1, joueur2, joueur3, nil];
}

-(void)addPlayer {
    Joueur* joueur = [[Joueur alloc]init];
    joueur.nom = @"new Joueur";
    [self.joueurs addObject:joueur];
    [self performSegueWithIdentifier:@"createJoueur" sender:self];
}

-(void)editTableView:(id)sender {
    self.tableView.editing = YES; // YES or TRUE, whatever.
}

-(int) nbTours {
    //int selectedItemIndex = self.nb TODO
    return 1;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    int index;
    if ([[segue identifier] isEqualToString:@"editJoueur"]) {
        index = [[[self.tableView indexPathsForSelectedRows] objectAtIndex:0] row];
    }
    else if ([[segue identifier]isEqualToString:@"createJoueur"]) {
        index = self.joueurs.count - 1;
    }
    
    
    [segue.destinationViewController setCurrentJoueur:[self.joueurs objectAtIndex:index]];
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.joueurs.count;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"protoCell"];
    cell.textLabel.text = [[self.joueurs objectAtIndex: indexPath.row] nom];
    return cell;
}

-(IBAction)finish {
    [self.delegate settingsDidFinish:self];
}
@end
