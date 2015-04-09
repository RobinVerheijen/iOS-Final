//
//  IntroViewController.m
//  iOSFinal
//
//  Created by Robin Verheijen on 30-03-15.
//  Copyright (c) 2015 Saxion. All rights reserved.
//

#import "IntroViewController.h"
#import "IntroPageViewController.h"

@interface IntroViewController ()

@end

@implementation IntroViewController

@synthesize pageControl;
@synthesize previousButton;
@synthesize nextButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pageController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    self.pageController.view.userInteractionEnabled = NO;
    
    self.pageController.dataSource = self;
    [[self.pageController view] setFrame:[[self view] bounds]];
    
    IntroPageViewController *initialViewController = [self viewControllerAtIndex:0];
    
    NSArray *viewControllers = [NSArray arrayWithObject:initialViewController];
    
    [self.pageController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    [self addChildViewController:self.pageController];
    [[self view] addSubview:[self.pageController view]];
    [self.pageController didMoveToParentViewController:self];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    
    NSUInteger index = [(IntroPageViewController *)viewController index];
    
    if (index == 0) {
        return nil;
    }
    
    index--;
    
    return [self viewControllerAtIndex:index];
    
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    
    NSUInteger index = [(IntroPageViewController *)viewController index];
    
    index++;
    
    if (index == 3) {
        return nil;
    }
    
    return [self viewControllerAtIndex:index];
    
}

- (IntroPageViewController *)viewControllerAtIndex:(NSUInteger)index {
    
    IntroPageViewController *childViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"intropageviewcontroller"];
    childViewController.index = index;
    
    NSLog(@"Index: %lu", (unsigned long)index);
    if(index == 0) {
        NSLog(@"Showing first view");
        
        if([self.view.constraints containsObject:_previousButtonLeadingConstraint]) {
            [self.view addConstraint:_fullWidthButtonConstraint];
            [self.view removeConstraint: _previousButtonLeadingConstraint];
            [nextButton setTitle:@"Learn more" forState:UIControlStateNormal];
        }
    } else if(index == 1) {
        [self.view removeConstraint:_fullWidthButtonConstraint];
        [self.view addConstraint: _previousButtonLeadingConstraint];
        
        [nextButton setTitle:@"Next" forState:UIControlStateNormal];
    } else if(index == 2) {
        [nextButton setTitle:@"Finish" forState:UIControlStateNormal];
    }
    
    switch(index) {
        case 0:
            
            childViewController.titleString = @"Notalicious";
            childViewController.descriptionString = @"The best way of taking notes of the conversations you have with your clients.";
            break;
        case 1:
            
            childViewController.titleString = @"Companies";
            childViewController.descriptionString = @"Add the companies you work with, assign contacts to them and let the note taking begin!";
            break;
        case 2:
            childViewController.titleString = @"Notes";
            childViewController.descriptionString = @"The notes that can be created with Notalicious are greater than ever before! They can contain lists, tables or even images. Eager to see how it works?\n\nStart taking some notes!";
            break;
    }
    [UIView animateWithDuration:0.7
        animations:^{
            [self.view layoutIfNeeded];
    }];
    
    pageControl.currentPage = index;
    
    return childViewController;
    
}


- (IBAction)nextPageButtonClick:(id)sender {
    
    if([nextButton.titleLabel.text isEqualToString:@"Finish"]) {
        
        UITabBarController *addCompanyViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"tabbar_controller"];
        [addCompanyViewController setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
        [self presentViewController:addCompanyViewController animated:YES completion:nil];
        
    } else {
    
        IntroPageViewController *initialViewController = [self viewControllerAtIndex:[pageControl currentPage] + 1];
    
        NSArray *viewControllers = [NSArray arrayWithObject:initialViewController];
    
        [self.pageController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
    }
}
- (IBAction)previousPageButtonClick:(id)sender {
    IntroPageViewController *initialViewController = [self viewControllerAtIndex:[pageControl currentPage] - 1];
    
    NSArray *viewControllers = [NSArray arrayWithObject:initialViewController];
    
    [self.pageController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionReverse animated:YES completion:nil];
}

@end
