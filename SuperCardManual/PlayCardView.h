//
//  PlayCardView.h
//  SuperCardManual
//
//  Created by Quynh Nguyen on 05/10/2014.
//  Copyright (c) 2014 ___QuynhNguyen___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayCardView : UIView

@property (nonatomic) NSUInteger rank;
@property (strong, nonatomic) NSString *suit;
@property (nonatomic) BOOL faceUp;

@end
