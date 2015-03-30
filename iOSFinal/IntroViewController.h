//
//  IntroViewController.h
//  iOSFinal
//
//  Created by Robin Verheijen on 30-03-15.
//  Copyright (c) 2015 Saxion. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IntroViewController : UIViewController <UIPageViewControllerDataSource>

@property (strong, nonatomic) UIPageViewController *pageController;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *fullWidthButtonConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *previousButtonLeadingConstraint;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;
@property (weak, nonatomic) IBOutlet UIButton *previousButton;

@end
