//
//  De.m
//  Monopoly
//
//  Created by lin on 11/11/14.
//  Copyright (c) 2014 HES-SO. All rights reserved.
//

#import "De.h"

@implementation De

-(int) lancer {
    return arc4random() % 5 + 1;
}

@end