//
//  Joueur.m
//  Monopoly
//
//  Created by lin on 11/11/14.
//  Copyright (c) 2014 HES-SO. All rights reserved.
//

#import "Joueur.h"

@interface Joueur () {
}
@end

@implementation Joueur
-(Joueur*) initWithNomAndPionAndPosition:(NSString*)nom :(NSString*)pion :(Case*)position
{
    if (self = [super init])
    {
        _nom = nom;
        _pion = pion;
        _position = position;
        _solde = 1500;
    }
    return self;
}

-(void)aTonTour :(Gobelet*)gob
{
    int resultat = [gob lancerLesDes];
    for (int i = 0; i < resultat; i++)
    {
        self.position = self.position.suivante;
        [self.position passerSur:self];
    }
    
    [self.position sArreterSur:self];
    
    NSLog(@"%@ a tiré %d est sur la case %@", self.nom, resultat, self.position.nom);
}

-(void) paye:(int) loyer
{
    self.solde = self.solde - loyer;
}

-(void) encaisse:(int) revenu
{
    self.solde = self.solde + revenu;
}

-(NSComparisonResult) compare:(Joueur*) j
{
    return j.solde - self.solde;
}

@end