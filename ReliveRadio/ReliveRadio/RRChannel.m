//
//  RRChannel.m
//  ReliveRadio
//
//  Created by Florian Kaiser on 09.12.13.
//  Copyright (c) 2013 ReliveRadio. All rights reserved.
//

#import "RRChannel.h"

@implementation RRChannel

- (id)initWithName:(NSString*)name andColor:(UIColor*)color andSelectedColor:(UIColor*)selectedColor
{
    if (self = [super init])
    {
        self.name = name;
        self.color = color;
        self.selectedColor = selectedColor;
    }
    return self;
}

@end
