//
//  AlbumDataController.m
//  SpinCity
//
//  Created by ChoiAiden on 2015. 11. 15..
//  Copyright © 2015년 Element 84. All rights reserved.
//

#import "AlbumDataController.h"
#import "Album.h"

@interface AlbumDataController()

@property(nonatomic, readonly) NSMutableArray *albumList;

- (void) initializeDefaultAlbums;

@end

@implementation AlbumDataController

- (id) init {
    self = [super init];
    
    if (self) {
        _albumList = [[NSMutableArray alloc] init];
        [self initializeDefaultAlbums];
        return self;
    }
    return nil;
}

- (void) initializeDefaultAlbums {
    NSString *pathToAlbumPlist = [[NSBundle mainBundle] pathForResource:@"AlbumArray" ofType:@"plist"];
    NSArray *defaultAlbumPlist = [NSArray arrayWithContentsOfFile:pathToAlbumPlist];
    for (NSDictionary *albumInfo in defaultAlbumPlist) {
        [self addAlbumWithTitle:albumInfo[@"title"] artist:albumInfo[@"artist"] summary:albumInfo[@"summary"] price:[albumInfo[@"price"] floatValue] locationInstore:albumInfo[@"locationInStore"]];
    }
}

- (void) addAlbumWithTitle:(NSString *)title artist:(NSString *)artist summary:(NSString *)summary price:(float)price locationInstore:(NSString *)locationInStore {
    Album *newAlbum = [[Album alloc] initWithTitle:title artist:artist summary:summary price:price locationInStore:locationInStore];
    [self.albumList addObject:newAlbum];
}

- (NSUInteger) albumCount {
    return [self.albumList count];
}

- (Album *) albumAtIndex:(NSUInteger)index {
    return [self.albumList objectAtIndex:index];
}

@end
