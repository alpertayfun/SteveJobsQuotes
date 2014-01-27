//
//  ViewController.h
//  Steve Jobs Quotes
//
//  Created by Athos on 09.01.2013.
//  Copyright (c) 2013  All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuotesView.h"

@interface ViewController : UIViewController <QuotesHDelegate>{

    //a serisi
    IBOutlet UIImageView *a1 ;
    IBOutlet UIImageView *a2 ;
    IBOutlet UIImageView *a3 ;
    IBOutlet UIImageView *a4 ;
    IBOutlet UIImageView *a5 ;
    IBOutlet UIImageView *a6 ;
    IBOutlet UIImageView *a7 ;
    IBOutlet UIImageView *a8 ;
    
    //b serisi
    IBOutlet UIImageView *b1 ;
    IBOutlet UIImageView *b2 ;
    IBOutlet UIImageView *b3 ;
    IBOutlet UIImageView *b4 ;
    IBOutlet UIImageView *b5 ;
    IBOutlet UIImageView *b6 ;
    IBOutlet UIImageView *b7 ;
    IBOutlet UIImageView *b8 ;
    
    //c serisi
    IBOutlet UIImageView *c1 ;
    IBOutlet UIImageView *c2 ;
    IBOutlet UIImageView *c3 ;
    IBOutlet UIImageView *c4 ;
    IBOutlet UIImageView *c5 ;
    IBOutlet UIImageView *c6 ;
    IBOutlet UIImageView *c7 ;
    IBOutlet UIImageView *c8 ;
    NSMutableArray *array;
    NSMutableArray *Quotes;
    NSTimer *aTimer;

    QuotesH *mvc2;
}

@property (nonatomic, retain) NSMutableArray *array;
@property (nonatomic, retain) NSMutableArray *Quotes;
@property (nonatomic, retain) NSTimer *aTimer;
//a serisi
@property (nonatomic, retain) IBOutlet UIImageView *a1 ;
@property (nonatomic, retain) IBOutlet UIImageView *a2 ;
@property (nonatomic, retain) IBOutlet UIImageView *a3 ;
@property (nonatomic, retain) IBOutlet UIImageView *a4 ;
@property (nonatomic, retain) IBOutlet UIImageView *a5 ;
@property (nonatomic, retain) IBOutlet UIImageView *a6 ;
@property (nonatomic, retain) IBOutlet UIImageView *a7 ;
@property (nonatomic, retain) IBOutlet UIImageView *a8 ;

//b serisi
@property (nonatomic, retain) IBOutlet UIImageView *b1 ;
@property (nonatomic, retain) IBOutlet UIImageView *b2 ;
@property (nonatomic, retain) IBOutlet UIImageView *b3 ;
@property (nonatomic, retain) IBOutlet UIImageView *b4 ;
@property (nonatomic, retain) IBOutlet UIImageView *b5 ;
@property (nonatomic, retain) IBOutlet UIImageView *b6 ;
@property (nonatomic, retain) IBOutlet UIImageView *b7 ;
@property (nonatomic, retain) IBOutlet UIImageView *b8 ;

//c serisi
@property (nonatomic, retain) IBOutlet UIImageView *c1 ;
@property (nonatomic, retain) IBOutlet UIImageView *c2 ;
@property (nonatomic, retain) IBOutlet UIImageView *c3 ;
@property (nonatomic, retain) IBOutlet UIImageView *c4 ;
@property (nonatomic, retain) IBOutlet UIImageView *c5 ;
@property (nonatomic, retain) IBOutlet UIImageView *c6 ;
@property (nonatomic, retain) IBOutlet UIImageView *c7 ;
@property (nonatomic, retain) IBOutlet UIImageView *c8 ;
@end
