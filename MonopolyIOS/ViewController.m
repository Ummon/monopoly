//
//  ViewController.m
//  MonopolyIOS
//
//  Created by ummon on 18/11/14.
//  Copyright (c) 2014 hes-so. All rights reserved.
//

#import "ViewController.h"
#import "Joueur.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self run];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(void)settingsDidFinish:(SettingsViewController*)settingsViewController {
    [settingsViewController dismissViewControllerAnimated:TRUE completion:^(void){NSLog(@"finish");}];
}

// Appelé avant une transition vers une autre vue.
// Dans notre cas on s'enregistre en tant que 'delegate'.
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [[segue destinationViewController] setDelegate :self];
}

-(void)run {
    self.monopoly = [[Monopoly alloc] initWithNbJoueur:4 :20];
    [self.monopoly jouer];
    
    NSArray* classement = [self.monopoly classement];
    NSString* resultat = @"";
    
    for (Joueur* j in classement) {
        resultat = [[NSString alloc] initWithFormat:@"%@\n%@-%d", resultat, j.nom, j.solde];
    }
    self.txtClassement.text = resultat;
}

@end

