//
//  ViewController.m
//  iOSFinal
//
//  Created by Robin Verheijen on 18-03-15.
//  Copyright (c) 2015 Saxion. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIMenuItem *menuItem = [[UIMenuItem alloc] initWithTitle:@"Custom Action"
//                                                      action:@selector(customAction:)];
//    [[UIMenuController sharedMenuController] setMenuItems:[NSArray arrayWithObject:menuItem]];
//    
//    [[UIMenuController sharedMenuController] update];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//
//- (void)customAction:(id)sender {
//    NSLog(@"custom action! %@", sender);
//}

//- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
//    
//    if (action == @selector(_showTextStyleOptions:)) {
//        
//        return YES;
//        
//    }
//    
//    return [super canPerformAction:action withSender:sender];
//}

//- (void)textViewDidBeginEditing:(UITextView *)textView {
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(menuWillBeShown:) name:UIMenuControllerWillShowMenuNotification object:nil];
//}
//
//- (void)textViewDidEndEditing:(UITextView *)textView {
//    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIMenuControllerWillShowMenuNotification object:nil];
//}
//
//- (void)menuWillBeShown:(NSNotification *)notification {
//    CGRect menuFrame = [[UIMenuController sharedMenuController] menuFrame];
//    [[UIMenuController sharedMenuController] setMenuVisible:NO animated:NO]; // Don't show the default menu controller
//    
//    UIMenuController *customController = [[UIMenuController alloc] init];
//    
//    [customController setTargetRect:menuFrame inView:self.view];
//    
//    [customController setMenuVisible:YES animated:YES];
//}
@end
