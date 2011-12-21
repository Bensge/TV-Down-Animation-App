//
//  ViewController.m
//  TVDown
//
//  Created by Mahmood1 on 12/20/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
       
    
	// Do any additional setup after loading the view, typically from a nib.
}


-(void)animation{
    
    
    
    [UIView beginAnimations:@"second" context:nil];
    
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    
    [UIView setAnimationDelegate:self];
    
    [UIView setAnimationDidStopSelector:@selector(finished)];
    
    [UIView setAnimationDuration:0.2];
    
    whiteView.frame = CGRectMake(160, 235, 0, 8);
    
    [UIView commitAnimations];
    
    NSLog(@"Fertig!!!");

    
    
}



-(void) finished {
    
    
    [[UIApplication sharedApplication] setStatusBarHidden:NO animated:YES];

    
    
    [UIView beginAnimations:@"third" context:nil];
    
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    
    [UIView setAnimationDelegate:self];
    
    [UIView setAnimationDidStopSelector:@selector(end)];
    
    [UIView setAnimationDuration:0.4];
    
  //  whiteView.frame = CGRectMake(160, 235, 0, 8);
    
    
    blackView.alpha = 0.0;
    
    
    [UIView commitAnimations];
    
    NSLog(@"Fertig (2)!!!");
    

    
    
}


-(void) end {
    

    
    [whiteView removeFromSuperview];
    [blackView removeFromSuperview];
    blackView.alpha = 1.0;
    
    

    
    
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)animateNow:(id)sender {
    
    
    [[UIApplication sharedApplication] setStatusBarHidden:YES animated:NO];

    
    blackView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
    blackView.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:blackView];
    
    whiteView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    whiteView.backgroundColor = [UIColor whiteColor];
    
    
    [self.view addSubview:whiteView];
    
    
    
    [UIView beginAnimations:@"first" context:nil];
    
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    
    [UIView setAnimationDelegate:self];
    
    [UIView setAnimationDidStopSelector:@selector(animation)];
    
    [UIView setAnimationDuration:0.3];
    
    whiteView.frame = CGRectMake(0, 235, 320, 8);
    
    [UIView commitAnimations];
    

}
@end
