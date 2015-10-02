//
//  Fruit.h
//  AppleTree
//
//  Created by fpmi on 12.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionalTypes.h"

@interface Fruit : NSObject

@property Color color;
@property int nucleusCount;
@property bool isMatured;
@property bool isFallen;

-(void) fallDown;
-(void) mature;
-(id) initWithColor:(Color)color;
-(id)init;
-(void)showDetails;

@end
