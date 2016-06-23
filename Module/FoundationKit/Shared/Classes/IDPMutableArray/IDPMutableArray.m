//
//  IDPMutableArray.m
//  Accomplist
//
//  Created by Oleksa 'trimm' Korin on 4/14/13.
//  Copyright (c) 2013 IDAP Group. All rights reserved.
//

#import "IDPMutableArray.h"

@interface IDPMutableArray ()
@property (nonatomic, strong)   NSMutableArray      *array;

@end

@implementation IDPMutableArray

#pragma mark -
#pragma mark Initializations and Deallocations

- (instancetype)init {
    return [self initWithCapacity:1];
}

- (instancetype)initWithCapacity:(NSUInteger)count {
    self = [super init];
    if (self) {
        self.array = [NSMutableArray arrayWithCapacity:count];
    }
    
    return self;
}

#pragma mark -
#pragma mark NSArray

- (NSUInteger)count {
    return [self.array count];
}

- (id)objectAtIndex:(NSUInteger)index {
    return [self.array objectAtIndex:index];
}

#pragma mark -
#pragma mark NSMutableArray

- (void)insertObject:(id)anObject atIndex:(NSUInteger)index {
    [self.array insertObject:anObject atIndex:index];
}

- (void)removeObjectAtIndex:(NSUInteger)index {
    [self.array removeObjectAtIndex:index];
}

- (void)addObject:(id)anObject {
    [self.array addObject:anObject];
}

- (void)removeLastObject {
    [self.array removeLastObject];
}

- (void)replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject {
    [self.array replaceObjectAtIndex:index withObject:anObject];
}

- (void)insertObjects:(NSArray *)objects atIndexes:(NSIndexSet *)indexes {
    [self.array insertObjects:objects atIndexes:indexes];
}

- (void)removeObjectsAtIndexes:(NSIndexSet *)indexes {
    [self.array objectsAtIndexes:indexes];
}

- (void)replaceObjectsAtIndexes:(NSIndexSet *)indexes withObjects:(NSArray *)objects {
    [self.array replaceObjectsAtIndexes:indexes withObjects:objects];
}

@end
