//
//  Contact.h
//  iOSFinal
//
//  Created by Saron Grave on 09/04/15.
//  Copyright (c) 2015 Saxion. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Company, Note;

@interface Contact : NSManagedObject

@property (nonatomic, retain) NSData * contact_img;
@property (nonatomic, retain) NSString * contactlist_ref;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) Company *company;
@property (nonatomic, retain) NSSet *note;
@end

@interface Contact (CoreDataGeneratedAccessors)

- (void)addNoteObject:(Note *)value;
- (void)removeNoteObject:(Note *)value;
- (void)addNote:(NSSet *)values;
- (void)removeNote:(NSSet *)values;

@end
