//
//  QuotesView.m
//  Steve Jobs Quotes
//
//  Created by Athos on 10.01.2013.
//  Copyright (c) 2013  All rights reserved.
//

#import "QuotesView.h"
#import "JSON.h"
#import <QuartzCore/QuartzCore.h>

@interface QuotesH () <FBLoginViewDelegate>

@property (strong, nonatomic) id<FBGraphUser> loggedInUser;

@end

@implementation QuotesH

@synthesize delegate,QuotesV,myTextView,moviePlayer;

NSString const * APIKEY = @"202cb962ac59075b964b07152d234b70";

NSString * newText = nil;

NSString * newTexts = nil;

NSString * newTextss = nil;

-(void)updateQuotes
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	SBJsonParser *parser = [[SBJsonParser alloc] init];
	NSString *urls = [NSString stringWithFormat:@"http://api.abc.com/?api=stevejobs&name=egegensteve&token=%@",APIKEY];
	NSLog(@"%@",urls);
	NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:urls]];
	
	NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
	NSString *json_string = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
	
	NSArray *statuses = [parser objectWithString:json_string error:nil];
    QuotesV = [[NSMutableArray alloc] init];
    
	for (NSDictionary *status in statuses)
	{
        //NSLog(@"%@", [status objectForKey:@"description"]);
        [QuotesV addObject:[status objectForKey:@"description"]];
        
	}
    
    
	[parser release];
	[pool release];
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)viewWillAppear:(BOOL)animated
{
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    CGSize screenSizes = screenBounds.size;
    CGFloat screenWidths = screenSizes.width;
    CGFloat screenHeights = screenSizes.height - 20;
    UIImageView *bg = [[UIImageView alloc] initWithFrame:CGRectMake(0,0,screenWidths,screenHeights)];
    bg.clipsToBounds = YES;
    bg.image = [UIImage imageNamed:@"bg.png"];
    [self.view addSubview:bg];
    [bg release];
    

    
    [self updateQuotes];
    newText = [[NSString alloc] initWithFormat:@"%@", [QuotesV objectAtIndex:random()%[QuotesV count]]];
    //NSLog(@"%@",string);
    NSUInteger characterCount = [newText length];
    NSLog(@"%d",characterCount);
    
    
    
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    CGFloat screenWidth = screenSize.width - 40;
    CGFloat screenHeight = screenSize.height - 100;
   
        
    myTextView = [[UITextView alloc] initWithFrame:CGRectMake(20, 70, screenWidth, screenHeight)];
    myTextView.backgroundColor = [UIColor clearColor];
    myTextView.text = [[NSString alloc] initWithFormat:@"“ %@ ”", newText];
    myTextView.delegate = self;
    myTextView.font = [UIFont fontWithName:@"TimesNewRomanPS-ItalicMT" size:16];
    myTextView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    [myTextView setEditable:NO];
    [self.view addSubview:myTextView];
    
    self.navigationController.navigationBarHidden =YES;
    
    UISwipeGestureRecognizer *settingbtnpress =
    [[UISwipeGestureRecognizer alloc]
     initWithTarget:self
     action:@selector(Right:)];
    settingbtnpress.delegate = self;
    settingbtnpress.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:settingbtnpress];
    [settingbtnpress release];
    
    
    UISwipeGestureRecognizer *settingbtnpress1 =
    [[UISwipeGestureRecognizer alloc]
     initWithTarget:self
     action:@selector(Left:)];
    settingbtnpress1.delegate = self;
    settingbtnpress1.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:settingbtnpress1];
    [settingbtnpress1 release];
    
    UISwipeGestureRecognizer *settingbtnpress2 =
    [[UISwipeGestureRecognizer alloc]
     initWithTarget:self
     action:@selector(Down:)];
    settingbtnpress2.delegate = self;
    settingbtnpress2.direction = UISwipeGestureRecognizerDirectionDown;
    [self.view addGestureRecognizer:settingbtnpress2];
    [settingbtnpress2 release];
    
    /*
    UISwipeGestureRecognizer *settingbtnpress3 =
    [[UISwipeGestureRecognizer alloc]
     initWithTarget:self
     action:@selector(Up:)];
    settingbtnpress3.delegate = self;
    settingbtnpress3.direction = UISwipeGestureRecognizerDirectionUp;
    [self.view addGestureRecognizer:settingbtnpress3];
    [settingbtnpress3 release];
     */
    
    UIButton *tw = [[UIButton alloc] initWithFrame:CGRectMake(270,15,32,32)];
    UIImage *btnImage = [UIImage imageNamed:@"twitter.png"];
    [tw setImage:btnImage forState:UIControlStateNormal];
    [tw addTarget:self action:@selector(twitter:) forControlEvents:UIControlEventTouchUpInside];
    tw.clipsToBounds = YES;
    [self.view addSubview:tw];
    [tw release];
    
    
    UIButton *fb = [[UIButton alloc] initWithFrame:CGRectMake(230,15,32,32)];
    UIImage *btnImages = [UIImage imageNamed:@"facebook.png"];
    [fb setImage:btnImages forState:UIControlStateNormal];
    [fb addTarget:self action:@selector(facebook:) forControlEvents:UIControlEventTouchUpInside];
    fb.clipsToBounds = YES;
    [self.view addSubview:fb];
    [fb release];
    
    UIButton *ggle = [[UIButton alloc] initWithFrame:CGRectMake(190,15,32,32)];
    UIImage *btnImagess = [UIImage imageNamed:@"google.png"];
    [ggle setImage:btnImagess forState:UIControlStateNormal];
    [ggle addTarget:self action:@selector(facebook:) forControlEvents:UIControlEventTouchUpInside];
    ggle.clipsToBounds = YES;
    [self.view addSubview:ggle];
    [ggle release];
    
    UIButton *apple = [[UIButton alloc] initWithFrame:CGRectMake(150,15,32,32)];
    UIImage *btnImagesss = [UIImage imageNamed:@"apple.png"];
    [apple setImage:btnImagesss forState:UIControlStateNormal];
    [apple addTarget:self action:@selector(apple:) forControlEvents:UIControlEventTouchUpInside];
    apple.clipsToBounds = YES;
    [self.view addSubview:apple];
    [apple release];
    
}
- (IBAction)twitter:(id)sender {
	NSLog(@"twitter");

}
- (IBAction)facebook:(id)sender {
	NSLog(@"facebook");
    NSLog(@"%@",newText);
    
}

- (IBAction)apple:(id)sender {
	NSLog(@"Apple");
    NSLog(@"%@",newText);
    
  
    //NSURL* urls = [[NSBundle mainBundle] URLForResource:@"1984" withExtension:@"mp4"];
    
    NSURL *urls = [NSURL URLWithString:@"http://abc.com/assets/flv/stevejobs.mp4"];
    
    moviePlayer =  [[MPMoviePlayerController alloc]
                     initWithContentURL:urls];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(moviePlayBackDidFinish:)
                                                 name:MPMoviePlayerPlaybackDidFinishNotification
                                               object:moviePlayer];
    
    moviePlayer.controlStyle = MPMovieControlStyleEmbedded;
    moviePlayer.shouldAutoplay = YES;
    moviePlayer.allowsAirPlay = YES;
    [self.view addSubview:moviePlayer.view];
    [moviePlayer setFullscreen:YES animated:YES];

    
}

- (void) moviePlayBackDidFinish:(NSNotification*)notification {
    MPMoviePlayerController *player = [notification object];
    [[NSNotificationCenter defaultCenter]
     removeObserver:self
     name:MPMoviePlayerPlaybackDidFinishNotification
     object:player];
    
    if ([player
         respondsToSelector:@selector(setFullscreen:animated:)])
    {
        [player.view removeFromSuperview];
    }
}
- (IBAction)textFieldDone:(id)sender {
	[sender resignFirstResponder];
}
- (void)Right:(UITapGestureRecognizer *)gesture
{
    NSLog(@"Right");
    
    
    CATransition *tr=[CATransition  animation];
	tr.duration=0.5;
	tr.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	tr.type = @"pageUnCurl";
	tr.Subtype=@"fromRight";
	tr.fillMode = kCAFillModeForwards;
	[tr setFillMode:@"extended"];
	[tr setRemovedOnCompletion:NO];
    
    newText = [[NSString alloc] initWithFormat:@"“ %@ ”", [QuotesV objectAtIndex:random()%[QuotesV count]]];
	[self.myTextView setText:newText];
    
	tr.delegate=self;
	[self.view.layer addAnimation:tr forKey:@"pageCurlAnimation"];

}

- (void)Left:(UITapGestureRecognizer *)gesture
{
    NSLog(@"Left");
    CATransition *tr=[CATransition  animation];
	tr.duration=0.5;
	tr.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	tr.type = @"pageUnCurl";
	tr.Subtype=@"fromLeft";
	tr.fillMode = kCAFillModeForwards;
	[tr setFillMode:@"extended"];
	[tr setRemovedOnCompletion:NO];
    
    newText = [[NSString alloc] initWithFormat:@"“ %@ ”", [QuotesV objectAtIndex:random()%[QuotesV count]]];

    [self.myTextView setText:newText];
    
    
	tr.delegate=self;
	[self.view.layer addAnimation:tr forKey:@"pageCurlAnimation"];
    
    NSUInteger characterCountss = [newText length];
    NSLog(@"%d",characterCountss);
}

- (void)Down:(UITapGestureRecognizer *)gesture
{
    NSLog(@"Down");
    [self.delegate QuotesHDidFinish:self];
	[self release];
}

- (void)Up:(UITapGestureRecognizer *)gesture
{
    NSLog(@"Up");
    
    
    UIActionSheet *actionSheet;
	

#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 30200

			actionSheet = [[UIActionSheet alloc] initWithTitle:@"" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Copy", @"Facebook", @"Twitter", nil];
#else
		actionSheet = [[UIActionSheet alloc] initWithTitle:@"" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Copy", @"Facebook", @"Twitter", nil];
#endif
		

		

	
	actionSheet.actionSheetStyle = UIActionSheetStyleBlackTranslucent;
	actionSheet.delegate = self;
	
	[actionSheet showInView:self.view];
    [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationFade];
	
	[actionSheet release];
}


- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
	[[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
	
	if (buttonIndex == actionSheet.cancelButtonIndex) {
		return;
	} else if (buttonIndex == actionSheet.firstOtherButtonIndex) {
		
	} else if (buttonIndex == actionSheet.firstOtherButtonIndex + 1) {
		
	} else if (buttonIndex == actionSheet.firstOtherButtonIndex + 2) {
		
	}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction) QuotesHkapat:(id) sender
{
	NSLog(@"modalviewdismiss");
	[self.delegate QuotesHDidFinish:self];
	[self release];
}
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    return NO;
}

- (BOOL)textView:(UITextView *)txtView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if( [text rangeOfCharacterFromSet:[NSCharacterSet newlineCharacterSet]].location == NSNotFound ) {
        return YES;
    }
    
    [txtView resignFirstResponder];
    return NO;
}
@end
