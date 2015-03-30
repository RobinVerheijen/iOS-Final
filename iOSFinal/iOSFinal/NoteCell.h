//
//  NoteCell.h
//  iOSFinal
//
//  Created by Robin Verheijen on 23-03-15.
//  Copyright (c) 2015 Saxion. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NoteCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *noteTitle;
@property (weak, nonatomic) IBOutlet UILabel *noteBody;
@property (weak, nonatomic) IBOutlet UILabel *noteDate;

@end
