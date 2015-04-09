//
//  CompanyViewController.m
//  iOSFinal
//
//  Created by Robin Verheijen on 09-04-15.
//  Copyright (c) 2015 Saxion. All rights reserved.
//

#import "CompanyViewController.h"

@interface CompanyViewController ()
@property(strong) CLLocationManager *locationManager;
@end

@implementation CompanyViewController

@synthesize addLogoButton;
@synthesize nameTextField;
@synthesize addressTextField;
@synthesize emailTextField;
@synthesize phoneTextField;
@synthesize mapView;

- (void)viewDidLoad {
    [super viewDidLoad];
        
    self.locationManager = [[CLLocationManager alloc] init];
    [self.locationManager requestWhenInUseAuthorization];
    [self.locationManager setDelegate: self];
    [self.locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    [self.locationManager startUpdatingLocation];
    
    [self.navigationItem.rightBarButtonItem = [UIBarButtonItem alloc] initWithTitle:@"✓" style:UIBarButtonItemStyleDone target:self action:nil];
    
    NSDictionary *barButtonAppearanceDict = @{NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-Light" size:12.0], NSForegroundColorAttributeName: [UIColor whiteColor]};
    [[UIBarButtonItem appearance] setTitleTextAttributes:barButtonAppearanceDict forState:UIControlStateNormal];

    [self.navigationItem.rightBarButtonItem setTitleTextAttributes:@{NSFontAttributeName : [UIFont fontWithName:@"Helvetica-Neue-Light" size:18.0]} forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    CALayer *bottomBorderNameTextField = [CALayer layer];
    bottomBorderNameTextField.frame = CGRectMake(0.0f, nameTextField.frame.size.height - 1, nameTextField.frame.size.width, 1.0f);
    bottomBorderNameTextField.backgroundColor = [UIColor lightGrayColor].CGColor;
    
    [nameTextField.layer addSublayer:bottomBorderNameTextField];
    
    CALayer *bottomBorderAddressTextField = [CALayer layer];
    bottomBorderAddressTextField.frame = CGRectMake(0.0f, addressTextField.frame.size.height - 1, addressTextField.frame.size.width, 1.0f);
    bottomBorderAddressTextField.backgroundColor = [UIColor lightGrayColor].CGColor;
    
    [addressTextField.layer addSublayer:bottomBorderAddressTextField];
    
    CALayer *bottomBorderEmailTextField = [CALayer layer];
    bottomBorderEmailTextField.frame = CGRectMake(0.0f, emailTextField.frame.size.height - 1, emailTextField.frame.size.width, 1.0f);
    bottomBorderEmailTextField.backgroundColor = [UIColor lightGrayColor].CGColor;
    
    [emailTextField.layer addSublayer:bottomBorderEmailTextField];
    
    CALayer *bottomBorderPhoneTextField = [CALayer layer];
    bottomBorderPhoneTextField.frame = CGRectMake(0.0f, phoneTextField.frame.size.height - 1, phoneTextField.frame.size.width, 1.0f);
    bottomBorderPhoneTextField.backgroundColor = [UIColor lightGrayColor].CGColor;
    
    [phoneTextField.layer addSublayer:bottomBorderPhoneTextField];
}

- (IBAction)addLogoButtonClick:(id)sender {
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    imagePicker.delegate = self;
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:imagePicker animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    NSLog(@"Chosen image");
//    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    
    UIImage *chosenImage = info[UIImagePickerControllerOriginalImage];
//    [addLogoButton setImage:chosenImage forState:UIControlStateNormal];
    [addLogoButton setBackgroundImage:chosenImage forState:UIControlStateNormal];
    [addLogoButton setBackgroundImage:chosenImage forState:UIControlStateSelected];
    [addLogoButton setBackgroundImage:chosenImage forState:UIControlStateHighlighted];
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if(textField == nameTextField) {
        [addressTextField becomeFirstResponder];
    } else if(textField == addressTextField) {
        
        NSString *location = addressTextField.text;
        CLGeocoder *geocoder = [[CLGeocoder alloc] init];
        [geocoder geocodeAddressString:location
                     completionHandler:^(NSArray* placemarks, NSError* error){
                         if (placemarks && placemarks.count > 0) {
                             CLPlacemark *topResult = [placemarks objectAtIndex:0];
                             MKPlacemark *placemark = [[MKPlacemark alloc] initWithPlacemark:topResult];
//                             MKCoordinateRegion region = self.mapView.region;
//                             region.center = placemark.region.center;
//                             region.span.longitudeDelta /= 8.0;
//                             region.span.latitudeDelta /= 8.0;
                             
//                             [self.mapView setRegion:region animated:YES];
                             [self.mapView addAnnotation:placemark];
                         }
                     }
         ];
        
        [emailTextField becomeFirstResponder];
    } else if(textField == emailTextField) {
        [phoneTextField becomeFirstResponder];
    } else if(textField == phoneTextField) {
        [textField resignFirstResponder];
    }

    return YES;
}

- (MKAnnotationView *) mapView:(MKMapView *)mapView viewForAnnotation:(id ) annotation
{
    MKPinAnnotationView *newAnnotation = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"mappin"];
    newAnnotation.pinColor = MKPinAnnotationColorRed;
    newAnnotation.animatesDrop = YES;
    newAnnotation.canShowCallout = NO;
    [newAnnotation setSelected:YES animated:YES];
    return newAnnotation;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
