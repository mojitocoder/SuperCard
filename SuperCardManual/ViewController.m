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

- (IBAction)swipeCard:(UISwipeGestureRecognizer *)sender
{
    self.playCardView.faceUp = !self.playCardView.faceUp;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.playCardView.suit = @"♥"; //♠ ♣ ♥ ♦
    self.playCardView.rank = 13;
    
    [self.playCardView addGestureRecognizer:[[UIPinchGestureRecognizer alloc] initWithTarget:self.playCardView
                                                                                      action:@selector(pinch:)]];
}

//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}∫

@end
