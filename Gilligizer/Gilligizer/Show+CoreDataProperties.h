//
//  Show+CoreDataProperties.h
//  Gilligizer
//
//  Created by ChoiAiden on 2015. 12. 6..
//  Copyright © 2015년 Element 84, LLC. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Show.h"

NS_ASSUME_NONNULL_BEGIN

@interface Show (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *desc;
@property (nullable, nonatomic, retain) NSNumber *episodeID;
@property (nullable, nonatomic, retain) NSNumber *firstRun;
@property (nullable, nonatomic, retain) NSDate *showTime;
@property (nullable, nonatomic, retain) NSString *title;

@end

NS_ASSUME_NONNULL_END
