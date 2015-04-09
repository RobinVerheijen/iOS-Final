//
//  Company.h
//  iOSFinal
//
//  Created by Saron Grave on 09/04/15.
//  Copyright (c) 2015 Saxion. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Contact, Note;

@interface Company : NSManagedObject

@property (nonatomic, retain) NSString * address;
@property (nonatomic, retain) NSData * company_img;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * phone;
@property (nonatomic, retain) NSSet *contact;
@property (nonatomic, retain) NSSet *note;
@end

@interface Company (CoreDataGeneratedAccessors)

- (void)addContactObject:(Contact *)value;
- (void)removeContactObject:(Contact *)value;
- (void)addContact:(NSSet *)values;
- (void)removeContact:(NSSet *)values;

- (void)addNoteObject:(Note *)value;
- (void)removeNoteObject:(Note *)value;
- (void)addNote:(NSSet *)values;
- (void)removeNote:(NSSet *)values;

@end
