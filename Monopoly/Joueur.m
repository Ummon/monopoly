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
-(Joueur*) initWithNomAndPosition:(NSString*)nom :(NSString*)pion :(Case*)position {
    self = [super init];
    _nom = nom;
    _pion = pion;
    _position = position;
    return self;
}

-(void) sayHello {
    NSLog(@"Hello from %@", self.nom);
    // NSLog(@"Hello from %@", _nom); // Pas identique que la ligne précédente.
}

-(void)aTonTour :(Gobelet*)gob {
    // TODO
}

@end