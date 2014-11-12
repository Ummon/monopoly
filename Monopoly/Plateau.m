//
//  Plateau.m
//  Monopoly
//
//  Created by lin on 11/11/14.
//  Copyright (c) 2014 HES-SO. All rights reserved.
//

#import "Plateau.h"

@interface Plateau () {
    NSArray* _cases;
}
@end

@implementation Plateau
-(Plateau*)init {
    // TODO: initialiser le tableau de cases.

    //[createCases 0];
    return self;
}

-(Case*)createCases :(int)c {
    //_cases[c] = [[alloc Case]init :@"nom" :(c == _cases.length() ? _cases[0] : createCases(c+1))];
    return _cases[c];
}

-(Case*)getCaseDepart; {
    return [_cases firstObject];
}
@end
