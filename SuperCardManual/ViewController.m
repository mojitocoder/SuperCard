//
//  ViewController.m
//  SuperCardManual
//
//  Created by Quynh Nguyen on 05/10/2014.
//  Copyright (c) 2014 ___QuynhNguyen___. All rights reserved.
//

#import "ViewController.h"
#import "PlayCardView.h"
#import "PlayingCard.h"
#import "PlayingCardDeck.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet PlayCardView *playCardView;
@property (strong, nonatomic) Deck *deck;

@end

@implementation ViewController

- (Deck *) deck
{
    if (!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}

- (void) drawRandomPlayingCard
{
    Card *card = [self.deck drawRandomCard];
    if ([card isKindOfClass:[PlayingCard class]])
    {
        PlayingCard *playCard = (PlayingCard *)card;
        self.playCardView.rank = playCard.rank;
        self.playCardView.suit = playCard.suit;
    }
}


- (IBAction)swipeCard:(UISwipeGestureRecognizer *)sender
{
    if (!self.playCardView.faceUp) [self drawRandomPlayingCard];
    
    self.playCardView.faceUp = !self.playCardView.faceUp;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    self.playCardView.suit = @"♥"; //♠ ♣ ♥ ♦
//    self.playCardView.rank = 13;
    
    [self.playCardView addGestureRecognizer:[[UIPinchGestureRecognizer alloc] initWithTarget:self.playCardView
                                                                                      action:@selector(pinch:)]];
}

//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}∫

@end
