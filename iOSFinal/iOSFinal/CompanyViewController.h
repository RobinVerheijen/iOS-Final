//
//  CompanyViewController.h
//  iOSFinal
//
//  Created by Robin Verheijen on 09-04-15.
//  Copyright (c) 2015 Saxion. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <QuartzCore/QuartzCore.h>

@interface CompanyViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *addLogoButton;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *addressTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end
