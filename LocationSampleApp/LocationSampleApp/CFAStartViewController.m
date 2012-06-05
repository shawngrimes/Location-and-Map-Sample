//
//  CFAStartViewController.m
//  LocationSampleApp
//
//  Created by Shawn Grimes on 6/3/12.
//  Copyright (c) 2012 Campfire Apps, LLC. All rights reserved.
//

#import "CFAStartViewController.h"
#import "CFAAppDelegate.h"

@interface CFAStartViewController ()

@end

@implementation CFAStartViewController
@synthesize labelLocationInformation;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

}

-(void)viewDidAppear:(BOOL)animated{
    CFAAppDelegate *appDelegate=(CFAAppDelegate *)[UIApplication sharedApplication].delegate;
    CLLocation *currentLocation=appDelegate.locationManager.location;
    self.labelLocationInformation.text=[NSString stringWithFormat:@"latitude: %+.6f\nlongitude: %+.6f\naccuracy: %f",
                                        currentLocation.coordinate.latitude,
                                        currentLocation.coordinate.longitude,
                                        currentLocation.horizontalAccuracy];
}

- (void)viewDidUnload
{
    [self setLabelLocationInformation:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
