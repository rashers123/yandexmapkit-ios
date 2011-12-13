/*
 * Sample.m
 *
 * This file is a part of the Yandex Map Kit.
 *
 * Version for iOS © 2011 YANDEX
 * 
 * You may not use this file except in compliance with the License.
 * You may obtain a copy of the License at http://legal.yandex.ru/mapkit/
 */

#import "Sample.h"

@interface Sample ()

@property (nonatomic, readwrite, copy) NSString * title;
@property (nonatomic, readwrite, copy) NSString * subtitle;
@property (nonatomic, readwrite, copy) NSString * viewControllerClassName;

@end


@implementation Sample

#pragma mark - NSObject Lifecycle

- (id)init {
    return [self initWithDictionary:nil];
}

+ (id)sampleWithDictionary:(NSDictionary *)dictionary {
    return [[[[self class] alloc] initWithDictionary:dictionary] autorelease];
}

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.title = [dictionary objectForKey:@"Title"];
        self.subtitle = [dictionary objectForKey:@"Subtitle"];
        self.viewControllerClassName = [dictionary objectForKey:@"ViewControllerClass"];
    }
    return self;
}

#pragma mark - Properties

@synthesize title;
@synthesize subtitle;
@synthesize viewControllerClassName;

#pragma mark - Memory Management

- (void)dealloc {
    self.title = nil;
    self.subtitle = nil;
    self.viewControllerClassName = nil;
    
    [super dealloc];
}

@end
