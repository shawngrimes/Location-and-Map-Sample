//
//  CFAAppDelegate.h
//  LocationSampleApp
//
//  Created by Shawn Grimes on 6/1/12.
//  Copyright (c) 2012 Campfire Apps, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

//Add Location Framework
#import <CoreLocation/CoreLocation.h>

//Specify this app delegate complies with the location manager delegate
@interface CFAAppDelegate : UIResponder <UIApplicationDelegate, CLLocationManagerDelegate>

@property (strong, nonatomic) UIWindow *window;

//Add a location manager property to this app delegate
@property (strong, nonatomic) CLLocationManager *locationManager;

@end
