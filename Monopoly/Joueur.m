//
//  Joueur.m
//  Monopoly
//
//  Created by lin on 11/11/14.
//  Copyright (c) 2014 HES-SO. All rights reserved.
//

#import "Joueur.h"

@implementation Joueur
-(Joueur*) initWithNom:(NSString *)nom {
    self = [super init];
    _nom = nom;
    return self;
}

-(void) sayHello {
    NSLog(@"Hello from %@", self.nom);
    // NSLog(@"Hello from %@", _nom); // Pas identique que la ligne précédente.
}

@end