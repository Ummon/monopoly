//
//  Case.h
//  Monopoly
//
//  Created by lin on 11/11/14.
//  Copyright (c) 2014 HES-SO. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Case : NSObject

@property (strong, nonatomic, readonly) NSString* nom;
@property (strong, nonatomic, readonly) Case* suivante;

-(Case*)initWithNomAndSuivante :(NSString*)nom, :(Case*)suivante;

@end
