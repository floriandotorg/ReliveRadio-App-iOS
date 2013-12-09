//
//  RRChannel.h
//  ReliveRadio
//
//  Created by Florian Kaiser on 09.12.13.
//  Copyright (c) 2013 ReliveRadio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RRChannel : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) UIColor *color;
@property (strong, nonatomic) UIColor *selectedColor;

- (id)initWithName:(NSString*)name andColor:(UIColor*)color andSelectedColor:(UIColor*)selectedColor;

@end
