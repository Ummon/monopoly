//
//  Monopoly.m
//  Monopoly
//
//  Created by lin on 11/11/14.
//  Copyright (c) 2014 HES-SO. All rights reserved.
//

#import "Monopoly.h"

@interface Monopoly () {
    NSarray* _joueurs;
    Plateau* _plateau;
}
@end

@implementation Monopoly
-(Monopoly*)init :(int)nbJoueur {
    self = [super init];

    if (nbJoueur < 2 || nbJoueur > 8)
        return 0; // exceptions?

    _plateau = [[Plateau alloc]init];

    Case* premiereCase = _plateau.getCaseDepart();

    id joueurs[nbJoueur];
    for (int i = 0; i < nbJoueur; i++)
        joueurs[i] = [[Joueur alloc]initWithNomAndCase:@"Joueur" casePlateau:premiereCase];
    _joueurs = [NSArray arrayWithObjects:joueurs count:nbJoueur];

    return self;
}
-(void)jouer {
    // TODO.
}
@end
