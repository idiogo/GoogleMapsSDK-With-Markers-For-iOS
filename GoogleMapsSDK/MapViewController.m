//
//  MapViewController.m
//  GoogleMapsSDK
//
//  Created by Diogo Carneiro on 04/03/13.
//  Copyright (c) 2013 PicPay. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        locationManager = [[CLLocationManager alloc] init];
		locationManager.delegate = self;
		locationManager.distanceFilter = kCLDistanceFilterNone;
		locationManager.desiredAccuracy = kCLLocationAccuracyBest;
		[locationManager startUpdatingLocation];
    }
    return self;
}


- (void)loadView{
	GMSCameraPosition *camera = [GMSCameraPosition cameraWithTarget:locationManager.location.coordinate zoom:15];
	mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
	mapView_.myLocationEnabled = YES;
	mapView_.mapType = kGMSTypeNormal;
	
	self.view = mapView_;
	mapView_.delegate = self;
	
	GMSMarkerOptions *options = [[GMSMarkerOptions alloc] init];
	options.position = CLLocationCoordinate2DMake(-20.296474,-40.305759);
	options.title = @"Estabelecimento Um";
	options.snippet = @"Snippet Um";
	options.icon = [UIImage imageNamed:@"1"];
	[mapView_ addMarkerWithOptions:options];
	
	options = [[GMSMarkerOptions alloc] init];
	options.position = CLLocationCoordinate2DMake(-20.291544,-40.309192);
	options.title = @"Estabelecimento Dois";
	options.snippet = @"Snippet Dois";
	options.icon = [UIImage imageNamed:@"2"];
	[mapView_ addMarkerWithOptions:options];
	
	options = [[GMSMarkerOptions alloc] init];
	options.position = CLLocationCoordinate2DMake(-20.291101,-40.306059);
	options.title = @"Estabelecimento Três";
	options.snippet = @"Snippet Três";
	options.icon = [UIImage imageNamed:@"3"];
	[mapView_ addMarkerWithOptions:options];
	
	options = [[GMSMarkerOptions alloc] init];
	options.position = CLLocationCoordinate2DMake(-20.29423,-40.308602);
	options.title = @"Estabelecimento Quatro";
	options.snippet = @"Snippet Quatro";
	options.icon = [UIImage imageNamed:@"4"];
	[mapView_ addMarkerWithOptions:options];
	
	options = [[GMSMarkerOptions alloc] init];
	options.position = CLLocationCoordinate2DMake(-20.293818,-40.304836);
	options.title = @"Estabelecimento Cinco";
	options.snippet = @"Snippet Cinco";
	options.icon = [UIImage imageNamed:@"5"];
	[mapView_ addMarkerWithOptions:options];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    NSLog(@"OldLocation %f %f", oldLocation.coordinate.latitude, oldLocation.coordinate.longitude);
    NSLog(@"NewLocation %f %f", newLocation.coordinate.latitude, newLocation.coordinate.longitude);
}

- (void)mapView:(GMSMapView *)mapView didTapAtCoordinate:(CLLocationCoordinate2D)coordinate {
	NSLog(@"You tapped at %f,%f", coordinate.latitude, coordinate.longitude);
}

@end
