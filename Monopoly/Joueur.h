//
//  Joueur.h/Users/eifrpoe00115/Desktop/Monopoly/Monopoly/main.m
//  Monopoly
//
//  Created by lin on 11/11/14.
//  Copyright (c) 2014 HES-SO. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Joueur : NSObject

@property (strong, nonatomic) NSString* nom; // Setter + getter + variable instance.

-(void)sayHello; // Méthode d'instance. ('+' correspond à une méthode de classe(static en java))
-(Joueur*)initWithNom:(NSString*)nom; // Constructeur avec un paramètre.

@end
