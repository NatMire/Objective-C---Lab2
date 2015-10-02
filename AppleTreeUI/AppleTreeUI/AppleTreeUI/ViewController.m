//
//  ViewController.m
//  AppleTreeUI
//
//  Created by fpmi on 02.10.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *totalAppleCount;
@property (weak, nonatomic) IBOutlet UILabel *justFallenAppleCount;
@property (weak, nonatomic) IBOutlet UILabel *justMaturedAppleCount;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AppDelegate *myDelegate = [[UIApplication sharedApplication] delegate];
    _tree = myDelegate.tree;
    [self initializeLabels];
}
- (IBAction)grow:(id)sender {  
    [self.justMaturedAppleCount setText:[NSString stringWithFormat: @"%d apples have just matured",  [_tree growForAge:2 Height:2]]];
}
- (IBAction)shake:(id)sender {
    [self.justFallenAppleCount setText:[NSString stringWithFormat:@"%d apples have just fallen", [_tree shake]] ];
    [self setTotalAppleCountLabel]; 
}

- (void) createTreeIfNotExists {
    if (_tree == nil) {
        _tree = [[AppleTree alloc] initWithHeight:10 sort:APPLESORT1];
    }
}

- (void) initializeLabels {
    [self setTotalAppleCountLabel];
    [self.justFallenAppleCount setText:@"Fallen apples count"];
    [self.justMaturedAppleCount setText: @"Matured apples count"];
}

- (void) setTotalAppleCountLabel {
    [self setAppleCountLabel: [_tree countFruits]];
}
- (void) setAppleCountLabel:(int)count  {
    [self.totalAppleCount setText:[NSString stringWithFormat: @"%d apples on tree", count ]];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
