//
//  IntroPageViewController.m
//  iOSFinal
//
//  Created by Robin Verheijen on 30-03-15.
//  Copyright (c) 2015 Saxion. All rights reserved.
//

#import "IntroPageViewController.h"

@interface IntroPageViewController ()

@end

@implementation IntroPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    
    [_descriptionLabel setText:_descriptionString];
    [_titleLabel setText:_titleString];
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
