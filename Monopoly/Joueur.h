//
//  Joueur.h/Users/eifrpoe00115/Desktop/Monopoly/Monopoly/main.m
//  Monopoly
//
//  Created by lin on 11/11/14.
//  Copyright (c) 2014 HES-SO. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Joueur : NSObject

@property (strong, nonatomic, readonly) NSString* nom; // Variable instance + setter + getter.
@property (strong, nonatimic, readonly) NSString* pion;
@property (strong, nonatimic, readonly) Case* position;

-(Joueur*)initWithNomAndPionAndPosition :(NSString*)nom :(NSString*)pion :(Case*)position;

-(void)aTonTour :(Gobelet*)gob;

@end
