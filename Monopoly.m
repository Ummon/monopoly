//
//  Monopoly.m
//  Monopoly
//
//  Created by lin on 11/11/14.
//  Copyright (c) 2014 HES-SO. All rights reserved.
//

#import "Monopoly.h"
#import "Plateau.h"
#import "Joueur.h"

@interface Monopoly () {
    NSArray* _joueurs;
    Plateau* _plateau;
    Gobelet* _gobelet;
    int _nbTour;
}
@end

@implementation Monopoly
-(Monopoly*)initWithNbJoueur :(int)nbJoueur :(int)tour {
    if (self = [super init])
    {
        if (nbJoueur < 2 || nbJoueur > 8)
            return nil; // exceptions?
        
        _plateau = [[Plateau alloc] init];
        _gobelet = [[Gobelet alloc] init];
        
        Case* premiereCase = [_plateau getCaseDepart];
        
        id joueurs[nbJoueur];
        for (int i = 0; i < nbJoueur; i++) {
            NSString* nom = [NSString stringWithFormat:@"Joueur %d",i];
            joueurs[i] = [[Joueur alloc]initWithNomAndPionAndPosition:nom :@"Pion" :premiereCase];
        }
        _joueurs = [NSArray arrayWithObjects:joueurs count:nbJoueur];
    }

    return self;
}

-(void)jouer {
    for (int i = 0; i < _nbTour; i++)
    {
        for (Joueur* unJoueur in _joueurs)
            [unJoueur aTonTour:_gobelet];
    }
}

-(NSArray*) classement {
    return [_joueurs sortedArrayUsingSelector:@selector(compare:)];
}
@end
