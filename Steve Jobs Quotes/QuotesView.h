//
//  QuotesView.h
//  Steve Jobs Quotes
//
//  Created by Athos on 10.01.2013.
//  Copyright (c) 2013  All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>
#import <Twitter/Twitter.h>
#import <Accounts/Accounts.h>
#import <MediaPlayer/MediaPlayer.h>

@protocol QuotesHDelegate;


@class QuotesH;


@interface QuotesH : UIViewController <UIGestureRecognizerDelegate,UITextViewDelegate,UIActionSheetDelegate>{

    id<QuotesHDelegate> delegate;
    NSMutableArray *QuotesV;
    UITextView *myTextView;

}
@property (strong, nonatomic) MPMoviePlayerController *moviePlayer;
@property (nonatomic, assign) NSMutableArray *QuotesV;
@property (nonatomic, assign) UITextView *myTextView;
@property (nonatomic, assign) id<QuotesHDelegate> delegate;
- (IBAction) QuotesHkapat:(id) sender;
@end

@protocol QuotesHDelegate
- (void) QuotesHDidFinish: (QuotesH *) controller;
@end