//
//  CaseDepart.m
//  02-Monopoly-heritage
//
//  Created by Denis Peyrusaubes on 09/02/11.
//  Copyright 2011 Valtech Training. All rights reserved.
//

#import "CaseDepart.h"
#import "Joueur.h"

@implementation CaseDepart
-(CaseDepart*) init {
	self=[super initWithNom:@"Depart"];
	return self;
}

-(void) passerSur:(Joueur*) j {
	NSLog(@"%@ encaisse %d",[j nom],300);
	[j encaisse:300];
}

@end
