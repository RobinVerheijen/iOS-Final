//
//  CompanyViewController.m
//  iOSFinal
//
//  Created by Robin Verheijen on 09-04-15.
//  Copyright (c) 2015 Saxion. All rights reserved.
//

#import "CompanyViewController.h"

@interface CompanyViewController ()

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
