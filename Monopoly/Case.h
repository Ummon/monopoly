//
//  Case.h
//  Monopoly
//
//  Created by lin on 11/11/14.
//  Copyright (c) 2014 HES-SO. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Joueur;

@interface Case : NSObject

@property (strong, nonatomic, readonly) NSString* nom;
@property (weak, nonatomic) Case* suivante;

-(Case*)initWithNom :(NSString*)nom;
-(void) passerSur:(Joueur*) j;
-(void) sArreterSur:(Joueur*) j;

@end
