//
//  Monopoly.h
//  Monopoly
//
//  Created by lin on 11/11/14.
//  Copyright (c) 2014 HES-SO. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Monopoly : NSObject
-(Monopoly*)initWithNbJoueur :(int)nbJoueur :(int)tour;
-(void)jouer;
-(NSArray*) classement;
@end
