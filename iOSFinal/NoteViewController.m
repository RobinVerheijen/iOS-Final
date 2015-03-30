//
//  NoteViewController.m
//  iOSFinal
//
//  Created by Robin Verheijen on 30-03-15.
//  Copyright (c) 2015 Saxion. All rights reserved.
//

#import "NoteViewController.h"

@interface NoteViewController ()

@end

@implementation NoteViewController

@synthesize noteTextView;

@synthesize smallerFontSizeButton;
@synthesize largerFontSizeButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [smallerFontSizeButton setTitleTextAttributes:@{NSFontAttributeName: [UIFont boldSystemFontOfSize:16]} forState:UIControlStateNormal];
    [largerFontSizeButton setTitleTextAttributes:@{NSFontAttributeName: [UIFont boldSystemFontOfSize:18]} forState:UIControlStateNormal];
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
- (IBAction)deleteNoteButtonClick:(id)sender {
    
    UIAlertController *deleteSheet = [UIAlertController alertControllerWithTitle:@"Delete note" message:@"Are you sure you want to delete the note?" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction* removeAction = [UIAlertAction actionWithTitle:@"Delete" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action) {
        NSLog(@"Remove note");
    }];
    
    [deleteSheet addAction: removeAction];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
                                                          handler:nil];
    [deleteSheet addAction:defaultAction];
    [self presentViewController:deleteSheet animated:YES completion:nil];
        

}

- (IBAction)changeFontSize:(UIBarButtonItem *)sender {
    
    CGFloat fontSize = noteTextView.font.pointSize;
    
    if(sender == smallerFontSizeButton) {
        fontSize -= 1;
    } else if(sender == largerFontSizeButton) {
        fontSize += 1;
    }
    
    if(fontSize <= 14) {
        [smallerFontSizeButton setEnabled:NO];
    } else if(fontSize > 14 && fontSize < 20) {
        [smallerFontSizeButton setEnabled:YES];
        [largerFontSizeButton setEnabled:YES];
    } else if(fontSize >= 20) {
        [largerFontSizeButton setEnabled:NO];
    }
    
    [noteTextView setFont:[UIFont systemFontOfSize:fontSize]];
}

@end
