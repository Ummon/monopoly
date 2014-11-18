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
    struct timeval timestruct;
    gettimeofday(&timestruct, NULL);
    srandom(timestruct.tv_usec);
    return (int)((random() % 6) + 1);
}

@end