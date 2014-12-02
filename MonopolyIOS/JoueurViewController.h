//
//  JoueurViewController.h
//  MonopolyIOS
//
//  Created by ummon on 02/12/14.
//  Copyright (c) 2014 hes-so. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Joueur.h"

@interface JoueurViewController : UIViewController

@property(weak, nonatomic) Joueur* currentJoueur;
@property(weak, nonatomic) IBOutlet UITextField* textFieldNom;

@end
