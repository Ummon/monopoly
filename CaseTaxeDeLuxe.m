//
//  CaseTaxeDeLuxe.m
//  02-Monopoly-heritage
//
//  Created by Denis Peyrusaubes on 09/02/11.
//  Copyright 2011 Valtech Training. All rights reserved.
//

#import "CaseTaxeDeLuxe.h"
#import "Joueur.h"


@implementation CaseTaxeDeLuxe

-(CaseTaxeDeLuxe*) init {
	self=[super initWithNom:@"Taxe de Luxe"];
	return self;
}

-(void) sArreterSur:(Joueur*) j  {
    
	NSLog(@"Je fais payer %@",j.nom);
	[j paye:200];
}



@end
