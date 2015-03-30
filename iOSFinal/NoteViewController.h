//
//  NoteViewController.h
//  iOSFinal
//
//  Created by Robin Verheijen on 30-03-15.
//  Copyright (c) 2015 Saxion. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NoteTextView.h"

@interface NoteViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *smallerFontSizeButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *largerFontSizeButton;

@property (weak, nonatomic) IBOutlet NoteTextView *noteTextView;

@end
