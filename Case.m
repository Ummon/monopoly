//
//  Case.m
//  Monopoly
//
//  Created by lin on 11/11/14.
//  Copyright (c) 2014 HES-SO. All rights reserved.
//

#import "Case.h"

@implementation Case

-(Case*)initWithNom :(NSString*)nom
{
    if (self = [super init])
    {
        _nom = nom;
    }
    return self;
}

-(void) passerSur:(Joueur*) j
{
}

-(void) sArreterSur:(Joueur*) j
{
}

@end
