//
//  Plateau.m
//  Monopoly
//
//  Created by lin on 11/11/14.
//  Copyright (c) 2014 HES-SO. All rights reserved.
//

#import "Plateau.h"
#import "Case.h"
#import "CaseTaxeDeLuxe.h"
#import "CaseImpot.h"
#import "CaseDepart.h"

@interface Plateau () {
    NSMutableArray* _cases;
}
@end

@implementation Plateau
-(Plateau*)init {
    if (self=[super init])
    {
        Case* c;
        _cases = [NSMutableArray array];
        for (int i=0;i<40;i++)
        {
            switch (i) {
                case 0:
                    c = [[CaseDepart alloc] init];
                    break;
                case 37:
                    c = [[CaseTaxeDeLuxe alloc] init];
                    break;
                case 39:
                    c = [[CaseImpot alloc] init];
                    break;
                default:
                    c = [[Case alloc] initWithNom:[NSString stringWithFormat:@"Case %d",i]];
                    break;
            }
            [_cases addObject:c];
        }
        
        Case* caseCourante;
        Case* caseSuivante;
        
        for (int i = 0; i < 39; i++)
        {
            caseCourante = [_cases objectAtIndex:i];
            caseSuivante = [_cases objectAtIndex:i + 1];
            caseCourante.suivante = caseSuivante;
        }	
        
        caseCourante = [_cases objectAtIndex:39];
        caseSuivante = [_cases objectAtIndex:0];
        
        // fait pointer la dernière case sur la première
        caseCourante.suivante = caseSuivante;
    }
    return(self);
}

-(Case*)getCaseDepart; {
    return [_cases firstObject];
}
@end
