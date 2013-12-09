//
//  RRChannelCell.m
//  ReliveRadio
//
//  Created by Florian Kaiser on 09.12.13.
//  Copyright (c) 2013 ReliveRadio. All rights reserved.
//

#import "RRChannelCell.h"

@interface RRChannelCell ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (strong, nonatomic) RRChannel *channel;

@end

@implementation RRChannelCell

- (void)setChannel:(RRChannel*)channel
{
    _channel = channel;
    
    self.nameLabel.font = [UIFont fontWithName:@"RobotoSlab-Regular" size:self.nameLabel.font.pointSize];
    self.nameLabel.text = channel.name;
    self.contentView.backgroundColor = channel.color;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    if (selected)
    {
        self.contentView.backgroundColor = self.channel.selectedColor;
    }
    else
    {
        self.contentView.backgroundColor = self.channel.color;
    }
}

@end
