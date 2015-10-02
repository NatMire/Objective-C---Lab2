//
//  Tree.m
//  AppleTree
//
//  Created by fpmi on 12.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "Tree.h"

@implementation Tree

-(id)initWithHeight:(int)height {
    self = [super init];
    if(self) {
        _height = height;
        _age = 0;
        _fruits = [NSMutableArray array];   
    } 
	
    return self;
}

-(int) growForAge:(int)age Height:(int)height {
    NSLog(@"Growing...");
    self.age += age;
    self.height += height;
    for (Fruit *f in self.fruits) {
        if(!f.isMatured) {
            f.isMatured = arc4random_uniform(2);
        }      
    }
	
    return 0;
}

-(int)shake {
    NSLog(@"Shaking...");
    for (Fruit *f in self.fruits) {
        if(!f.isFallen && f.isMatured) {
            [f fallDown];
        }
    }
   
   return 0;
}

-(int)countFruits {
    int count = 0;
    for (Fruit *f in self.fruits) {
        if (!f.isFallen) {
            ++count;
        }
    }
    return count;
}
@end
