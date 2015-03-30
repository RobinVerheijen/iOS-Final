//
//  IntroPageViewController.h
//  iOSFinal
//
//  Created by Robin Verheijen on 30-03-15.
//  Copyright (c) 2015 Saxion. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IntroPageViewController : UIViewController

@property (assign, nonatomic) NSInteger index;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

@property (weak) NSString *titleString;
@property (weak) NSString *descriptionString;

@end
