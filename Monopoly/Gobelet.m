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
    De* de1;
    De* de2;
}
@end

@implementation Gobelet
-(Gobelet*) init {
    self = [super init];
    de1 = [[De alloc]init];
    de2 = [[De alloc]init];
    return self;
}

-(void) lancer {

    // TODO.
}

-(int) getValeurFace {
    return 0; // TODO.
}
@end
