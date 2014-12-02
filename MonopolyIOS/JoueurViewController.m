//
//  JoueurViewController.m
//  MonopolyIOS
//
//  Created by ummon on 02/12/14.
//  Copyright (c) 2014 hes-so. All rights reserved.
//

#import "JoueurViewController.h"

@interface JoueurViewController ()

@end

@implementation JoueurViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)save:(id)sender {
    self.currentJoueur.nom = self.textFieldNom.text;
}



@end
