//
//  MapViewController.h
//  GoogleMapsSDK
//
//  Created by Diogo Carneiro on 04/03/13.
//  Copyright (c) 2013 PicPay. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>

@interface MapViewController : UIViewController<GMSMapViewDelegate, CLLocationManagerDelegate>{
	GMSMapView *mapView_;
	CLLocationManager *locationManager;
}

@end
