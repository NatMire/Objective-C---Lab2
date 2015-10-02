//
//  Fruit.m
//  AppleTree
//
//  Created by fpmi on 12.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "Fruit.h"

@implementation Fruit

- (id) initWithColor:(Color)color {
    self = [super init];
    if (self) {
        _color = color;
        _nucleusCount = arc4random_uniform(10);
    }
    return self;
}
-(id) init {
    Color color = arc4random_uniform(sizeof(Color));
    return [self initWithColor:color];
}

- (void) fallDown  {
    self.isFallen = true;
    
}

- (void) mature {
    _isMatured = true;
}

-(void)showDetails {
    
}
@end
