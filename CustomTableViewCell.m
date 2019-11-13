//
//  CustomTableViewCell.m
//  Ex_3
//
//  Created by Mariann Thomas on 8/10/19.
//  Copyright © 2019 Mariann Thomas. All rights reserved.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.nameLabel.text = @"Mariann";
    self.shortDescription.text = @"27";
    self.longDescription.text = @"Female";
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
