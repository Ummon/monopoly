//
//  Case.m
//  Monopoly
//
//  Created by lin on 11/11/14.
//  Copyright (c) 2014 HES-SO. All rights reserved.
//

#import "Case.h"

@implementation Case
-(Case*)initWithNomAndSuivante :(NSString*)nom :(Case*)suivante {
    self = [super init];
    _nom = nom;
    _suivante = suivante;
    return self;
}
@end
