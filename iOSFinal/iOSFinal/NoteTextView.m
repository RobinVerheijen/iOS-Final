//
//  NoteTextView.m
//  iOSFinal
//
//  Created by Robin Verheijen on 23-03-15.
//  Copyright (c) 2015 Saxion. All rights reserved.
//

#import "NoteTextView.h"

@implementation NoteTextView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithCoder:(NSCoder *)inCoder {
    if (self = [super initWithCoder:inCoder]) {
        self.delegate = self;
        
        UIMenuItem *colorMenuItem = [[UIMenuItem alloc] initWithTitle:@"Change color"
                                                               action:@selector(changeTextColor:)];
        UIMenuItem *insertImageMenuItem = [[UIMenuItem alloc] initWithTitle:@"Insert image"
                                                                     action:@selector(insertImage:)];
        
        [[UIMenuController sharedMenuController] setMenuItems:[NSArray arrayWithObjects:colorMenuItem, insertImageMenuItem, nil]];
        
        [[UIMenuController sharedMenuController] update];
    }
    return self;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
    NSLog(@"canPerformAction");
    
    if(action == @selector(changeTextColor:)) {
        return YES;
    }
    
     if (action == @selector(_showTextStyleOptions:) || action == @selector(insertImage:)) {
        
        return YES;
    }
    
    if(action == @selector(_define:)) {
        
        return NO;
    }
    
    if(action == @selector(_promptForReplace:)) {
        
        return NO;
    }
    return [super canPerformAction:action withSender:sender];
}

- (void)changeTextColor:(id)sender {
    NSLog(@"Change text color! %@", sender);
}

- (void)insertImage:(id)sender {
    NSLog(@"Insert image %@", sender);
}

@end
