//
//  Gobelet.m
//  Monopoly
//
//  Created by lin on 11/11/14.
//  Copyright (c) 2014 HES-SO. All rights reserved.
// 🐝

#import "Gobelet.h"
#import "De.h"

@interface Gobelet () {
    De* _de1;
    De* _de2;
}
@end

@implementation Gobelet
-(Gobelet*) init {
    if (self = [super init])
    {
        _de1 = [[De alloc]init];
        _de2 = [[De alloc]init];
    }
    return self;
}

-(int) lancerLesDes {
    return [_de1 lancer] + [_de2 lancer];
}
@end
