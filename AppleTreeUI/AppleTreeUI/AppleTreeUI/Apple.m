//
//  Apple.m
//  AppleTree
//
//  Created by fpmi on 12.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "Apple.h"

@implementation Apple

- (id) initWithSort: (AppleSort) sort color : (Color) color {
    self = [super initWithColor:color];
    if (self) {
        _sort = sort;
    }
    return self;
}

- (id) init {
    return [self initWithSort:arc4random_uniform(sizeof(AppleSort)) color:arc4random_uniform(sizeof(Color))];
}

-(void)showDetails {
    NSLog(@"Object: Apple");
    NSLog(@"Sort: %d", self.sort);
    NSLog(@"Color: %d", self.color);
    NSLog(@"Number of nucleas: %d", self.nucleusCount);
    NSLog(@"Is matured: %d", self.isMatured);
    NSLog(@"Is fallen: %d", self.isFallen);
    printf("\n");

}

@end
