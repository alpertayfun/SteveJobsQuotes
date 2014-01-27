//
//  ViewController.m
//  Steve Jobs Quotes
//
//  Created by Athos on 09.01.2013.
//  Copyright (c) 2013  All rights reserved.
//

#import "ViewController.h"
#import <Foundation/Foundation.h>
#import "JSON.h"
#import "QuotesView.h"


@interface ViewController ()

@end

@implementation ViewController

@synthesize a1,a2,a3,a4,a5,a6,a7,a8,b1,b2,b3,b4,b5,b6,b7,b8,c1,c2,c3,c4,c5,c6,c7,c8,array,aTimer,Quotes;


- (void)viewDidLoad
{
    [super viewDidLoad];

    
    
    if([[UIScreen mainScreen] respondsToSelector:NSSelectorFromString(@"scale")])
    {
        if ([[UIScreen mainScreen] scale] < 1.1) {
        
            NSLog(@"Standard Resolution Device");
            //a serisi
            a1 = [[UIImageView alloc] initWithFrame:CGRectMake(0,0,106,60)];
            a1.image = [UIImage imageNamed:@"a1.png"];
            [self.view addSubview:a1];
            a1.userInteractionEnabled = YES;
            [a1 release];
            
            UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
            singleTap.cancelsTouchesInView = NO;
            [a1 addGestureRecognizer:singleTap];

            
            a2 = [[UIImageView alloc] initWithFrame:CGRectMake(0,60,106,60)];
            a2.image = [UIImage imageNamed:@"a2.png"];
            [self.view addSubview:a2];
            a2.userInteractionEnabled = YES;
            [a2 release];
            
            UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
            singleTap1.cancelsTouchesInView = NO;
            [a2 addGestureRecognizer:singleTap1];
            
            
            
            
            a3 = [[UIImageView alloc] initWithFrame:CGRectMake(0,120,106,60)];
            a3.image = [UIImage imageNamed:@"a3.png"];
            [self.view addSubview:a3];
            a3.userInteractionEnabled = YES;
            [a3 release];
            
            UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
            singleTap2.cancelsTouchesInView = NO;
            [a3 addGestureRecognizer:singleTap2];
            
            a4 = [[UIImageView alloc] initWithFrame:CGRectMake(0,180,106,60)];
            
            a4.image = [UIImage imageNamed:@"a4.png"];
            [self.view addSubview:a4];
            a4.userInteractionEnabled = YES;
            [a4 release];
            
            UITapGestureRecognizer *singleTap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
            singleTap3.cancelsTouchesInView = NO;
            [a4 addGestureRecognizer:singleTap3];
            
            a5 = [[UIImageView alloc] initWithFrame:CGRectMake(0,240,106,60)];
            a5.image = [UIImage imageNamed:@"a5.png"];
            [self.view addSubview:a5];
            a5.userInteractionEnabled = YES;
            [a5 release];
            
            UITapGestureRecognizer *singleTap4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
            singleTap4.cancelsTouchesInView = NO;
            [a5 addGestureRecognizer:singleTap4];
            
            a6 = [[UIImageView alloc] initWithFrame:CGRectMake(0,300,106,60)];
            
            a6.image = [UIImage imageNamed:@"a6.png"];
            [self.view addSubview:a6];
            a6.userInteractionEnabled = YES;
            [a6 release];
            
            UITapGestureRecognizer *singleTap5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
            singleTap5.cancelsTouchesInView = NO;
            [a6 addGestureRecognizer:singleTap5];
            
            
            
            a7 = [[UIImageView alloc] initWithFrame:CGRectMake(0,360,106,60)];
            a7.image = [UIImage imageNamed:@"a7.png"];
            [self.view addSubview:a7];
            a7.userInteractionEnabled = YES;
            [a7 release];
            UITapGestureRecognizer *singleTap6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
            singleTap6.cancelsTouchesInView = NO;
            [a7 addGestureRecognizer:singleTap6];
            
            
            
            a8 = [[UIImageView alloc] initWithFrame:CGRectMake(0,420,106,60)];
            a8.image = [UIImage imageNamed:@"a8.png"];
            [self.view addSubview:a8];
            a8.userInteractionEnabled = YES;
            [a8 release];
        
            UITapGestureRecognizer *singleTap7 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
            singleTap7.cancelsTouchesInView = NO;
            [a8 addGestureRecognizer:singleTap7];
            
            
            //b serisi
            b1 = [[UIImageView alloc] initWithFrame:CGRectMake(106,0,106,60)];
            
            b1.image = [UIImage imageNamed:@"b1.png"];
            [self.view addSubview:b1];
            b1.userInteractionEnabled = YES;
            [b1 release];
            UITapGestureRecognizer *singleTap8 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
            singleTap8.cancelsTouchesInView = NO;
            [b1 addGestureRecognizer:singleTap8];
            
            
            
            b2 = [[UIImageView alloc] initWithFrame:CGRectMake(106,60,106,60)];
            b2.image = [UIImage imageNamed:@"b2.png"];
            [self.view addSubview:b2];
            b2.userInteractionEnabled = YES;
            [b2 release];
            UITapGestureRecognizer *singleTap9 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
            singleTap9.cancelsTouchesInView = NO;
            [b2 addGestureRecognizer:singleTap9];
            
            
            
            b3 = [[UIImageView alloc] initWithFrame:CGRectMake(106,120,106,60)];
            b3.image = [UIImage imageNamed:@"b3.png"];
            [self.view addSubview:b3];
            b3.userInteractionEnabled = YES;
            [b3 release];
            UITapGestureRecognizer *singleTap10 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
            singleTap10.cancelsTouchesInView = NO;
            [b3 addGestureRecognizer:singleTap10];
            
            
            b4 = [[UIImageView alloc] initWithFrame:CGRectMake(106,180,106,60)];
            b4.image = [UIImage imageNamed:@"b4.png"];
            [self.view addSubview:b4];
            b4.userInteractionEnabled = YES;
            [b4 release];
            UITapGestureRecognizer *singleTap11 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
            singleTap11.cancelsTouchesInView = NO;
            [b4 addGestureRecognizer:singleTap11];
            
            
            
            b5 = [[UIImageView alloc] initWithFrame:CGRectMake(106,240,106,60)];
            b5.image = [UIImage imageNamed:@"b5.png"];
            [self.view addSubview:b5];
            b5.userInteractionEnabled = YES;
            [b5 release];
            UITapGestureRecognizer *singleTap12 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
            singleTap12.cancelsTouchesInView = NO;
            [b5 addGestureRecognizer:singleTap12];
            
            
            b6 = [[UIImageView alloc] initWithFrame:CGRectMake(106,300,106,60)];
            b6.image = [UIImage imageNamed:@"b6.png"];
            [self.view addSubview:b6];
            b6.userInteractionEnabled = YES;
            [b6 release];
            UITapGestureRecognizer *singleTap13 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
            singleTap13.cancelsTouchesInView = NO;
            [b6 addGestureRecognizer:singleTap13];
            
            
            
            b7 = [[UIImageView alloc] initWithFrame:CGRectMake(106,360,106,60)];
            b7.image = [UIImage imageNamed:@"b7.png"];
            [self.view addSubview:b7];
            b7.userInteractionEnabled = YES;
            [b7 release];
            UITapGestureRecognizer *singleTap14 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
            singleTap14.cancelsTouchesInView = NO;
            [b7 addGestureRecognizer:singleTap14];
            
            
            
            b8 = [[UIImageView alloc] initWithFrame:CGRectMake(106,420,106,60)];
            b8.image = [UIImage imageNamed:@"b8.png"];
            [self.view addSubview:b8];
            b8.userInteractionEnabled = YES;
            [b8 release];
            UITapGestureRecognizer *singleTap15 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
            singleTap15.cancelsTouchesInView = NO;
            [b8 addGestureRecognizer:singleTap15];
            
            
            
            //c serisi
            c1 = [[UIImageView alloc] initWithFrame:CGRectMake(212,0,106,60)];
            c1.image = [UIImage imageNamed:@"c1.png"];
            [self.view addSubview:c1];
            c1.userInteractionEnabled = YES;
            [c1 release];
            UITapGestureRecognizer *singleTap16 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
            singleTap16.cancelsTouchesInView = NO;
            [c1 addGestureRecognizer:singleTap16];
            
            
            
            c2 = [[UIImageView alloc] initWithFrame:CGRectMake(212,60,106,60)];
            c2.image = [UIImage imageNamed:@"c2.png"];
            [self.view addSubview:c2];
            c2.userInteractionEnabled = YES;
            [c2 release];
            UITapGestureRecognizer *singleTap17 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
            singleTap17.cancelsTouchesInView = NO;
            [c2 addGestureRecognizer:singleTap17];
            
            
            c3 = [[UIImageView alloc] initWithFrame:CGRectMake(212,120,106,60)];
            c3.image = [UIImage imageNamed:@"c3.png"];
            [self.view addSubview:c3];
            c3.userInteractionEnabled = YES;
            [c3 release];
            UITapGestureRecognizer *singleTap18 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
            singleTap18.cancelsTouchesInView = NO;
            [c3 addGestureRecognizer:singleTap18];
            
            
            c4 = [[UIImageView alloc] initWithFrame:CGRectMake(212,180,106,60)];
            c4.image = [UIImage imageNamed:@"c4.png"];
            [self.view addSubview:c4];
            c4.userInteractionEnabled = YES;
            [c4 release];
            UITapGestureRecognizer *singleTap19 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
            singleTap19.cancelsTouchesInView = NO;
            [c4 addGestureRecognizer:singleTap19];
            
            
            c5 = [[UIImageView alloc] initWithFrame:CGRectMake(212,240,106,60)];
            c5.image = [UIImage imageNamed:@"c5.png"];
            [self.view addSubview:c5];
            c5.userInteractionEnabled = YES;
            [c5 release];
            UITapGestureRecognizer *singleTap20 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
            singleTap20.cancelsTouchesInView = NO;
            [c5 addGestureRecognizer:singleTap20];
            
            
            c6 = [[UIImageView alloc] initWithFrame:CGRectMake(212,300,106,60)];
            c6.image = [UIImage imageNamed:@"c6.png"];
            [self.view addSubview:c6];
            c6.userInteractionEnabled = YES;
            [c6 release];
            UITapGestureRecognizer *singleTap21 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
            singleTap21.cancelsTouchesInView = NO;
            [c6 addGestureRecognizer:singleTap21];
            
            
            c7 = [[UIImageView alloc] initWithFrame:CGRectMake(212,360,106,60)];
            c7.image = [UIImage imageNamed:@"c7.png"];
            [self.view addSubview:c7];
            c7.userInteractionEnabled = YES;
            [c7 release];
            UITapGestureRecognizer *singleTap22 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
            singleTap22.cancelsTouchesInView = NO;
            [c7 addGestureRecognizer:singleTap22];
            
            
            
            c8 = [[UIImageView alloc] initWithFrame:CGRectMake(212,420,106,60)];
            c8.image = [UIImage imageNamed:@"c8.png"];
            [self.view addSubview:c8];
            c8.userInteractionEnabled = YES;
            [c8 release];
            UITapGestureRecognizer *singleTap23 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
            singleTap23.cancelsTouchesInView = NO;
            [c8 addGestureRecognizer:singleTap23];
            
            
            
            array = [[NSMutableArray alloc] init];
            [array addObject:a1];
            [array addObject:b1];
            [array addObject:a4];
            [array addObject:a8];
            [array addObject:c1];
            [array addObject:c6];
            
        }
        
        
        if ([[UIScreen mainScreen] scale] > 1.9){
            NSLog(@"High Resolution Device");
        
        }

    }
    
    
    aTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(animation:) userInfo:nil repeats:YES];
    
    

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)singleTapGestureCaptured:(UITapGestureRecognizer *)gesture
{
    NSLog(@"touch a1");
    
    mvc2 = [[QuotesH alloc] initWithNibName:@"QuotesView" bundle:nil];
    mvc2.delegate = self;
    
    if(![mvc2 retain]){
        NSLog(@"retain edilmiş");
    }
    else {
        NSLog(@"retain edilmemiş");
        mvc2.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
        UINavigationController *navCon = [[UINavigationController alloc] initWithRootViewController:mvc2];
        if([self respondsToSelector:@selector(presentViewController:animated:completion:)])
            [self presentViewController:navCon animated:YES completion:^{/* done */}];
        else
            [self presentModalViewController:navCon animated:YES];
        [mvc2 retain];
        [mvc2 autorelease];
        mvc2 = nil;
    }

}

-(void) animation:(NSTimer *)theTimer
{
    //NSString *newText = [[NSString alloc] initWithFormat:@"%@", [array objectAtIndex:random()%[array count]]];
    //NSLog(@"%@",[array objectAtIndex:(arc4random()%[array count])]);
    //UIImageView *tmp_imgvw = [array objectAtIndex:(arc4random()%[array count])];
    //NSLog(@"%@",tmp_imgvw);
    
    UIImageView *myImage = [array objectAtIndex:(arc4random()%[array count])];
    myImage.alpha = 0.0;
    [self.view addSubview:myImage];
    [UIView animateWithDuration:0.7 animations:^{
        myImage.alpha = 1.0;
    }];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) QuotesHDidFinish: (QuotesH *) controller {
	
	[self dismissModalViewControllerAnimated: YES];
}
@end
