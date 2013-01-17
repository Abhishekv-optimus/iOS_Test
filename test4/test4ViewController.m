//
//  test4ViewController.m
//  test4
//
//  Created by Optimus on 11/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "test4ViewController.h"

@interface test4ViewController ()

@end

@implementation test4ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    s1.contentSize=CGSizeMake(320, 1000);
    s2.contentSize=CGSizeMake(600, 50);
    s3.contentSize=CGSizeMake(600, 50);
    
    UIScrollView *s4=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 800, 320, 80)];
    s4.contentSize=CGSizeMake(600, 50);
    s4.backgroundColor=[UIColor redColor];
    s4.scrollEnabled=YES;
    [s1 addSubview:s4];
    
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(500, 20, 100, 20)];
    label.text=@"hello";
    [s4 addSubview:label];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
