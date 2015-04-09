//
//  RootViewController.m
//  iOSFinal
//
//  Created by Robin Verheijen on 30-03-15.
//  Copyright (c) 2015 Saxion. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tabBar.tintColor = [UIColor colorWithRed:254.0/255.0 green:45.0/255.0 blue:62.0/255.0 alpha:1.0];
//    self.tabBar.tintColor = [UIColor whiteColor];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    if(![userDefaults stringForKey:@"intro_seen"]) {
        
        [userDefaults setObject:@"true" forKey:@"intro_seen"];
        UIViewController *introViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"intro_view_controller"];
        [introViewController setModalPresentationStyle: UIModalPresentationFormSheet];
        
        [self presentViewController:introViewController animated:YES completion:nil];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
