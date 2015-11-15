//
//  AlbumDataController.h
//  SpinCity
//
//  Created by ChoiAiden on 2015. 11. 15..
//  Copyright © 2015년 Element 84. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Album;

@interface AlbumDataController : NSObject

- (NSUInteger)albumCount;

// Read
- (Album *)albumAtIndex: (NSUInteger)index;

// Create
- (void) addAlbumWithTitle: (NSString *)title artist:(NSString *)artist summary:(NSString *)summary price:(float)price locationInstore:(NSString *)locationInStore;

@end
