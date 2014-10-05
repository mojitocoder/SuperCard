//
//  ViewController.m
//  SuperCardManual
//
//  Created by Quynh Nguyen on 05/10/2014.
//  Copyright (c) 2014 ___QuynhNguyen___. All rights reserved.
//

#import "ViewController.h"
#import "PlayCardView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet PlayCardView *playCardView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.

    self.playCardView.suit = @"♦"; //♠ ♣ ♥ ♦
    self.playCardView.rank = 12;
    self.playCardView.faceUp = YES;
}

//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}∫

@end
