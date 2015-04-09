//
//  Note.h
//  iOSFinal
//
//  Created by Saron Grave on 09/04/15.
//  Copyright (c) 2015 Saxion. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Company, Contact;

@interface Note : NSManagedObject

@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) NSData * text;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) Company *company;
@property (nonatomic, retain) Contact *contact;

@end
