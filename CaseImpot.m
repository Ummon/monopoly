//
//  CaseImpot.m
//  02-Monopoly-heritage
//
//  Created by Denis Peyrusaubes on 09/02/11.
//  Copyright 2011 Valtech Training. All rights reserved.
//

#import "CaseImpot.h"
#import "Joueur.h"

 
@implementation CaseImpot

-(CaseImpot*) init {
	self=[super initWithNom:@"Taxe de Luxe"];
	return self;
}

-(void) sArreterSur:(Joueur*) j  {
	NSLog(@"Je fais payer %@",j.nom);
	[j paye:300];
}



@end
