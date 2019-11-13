//
//  CustomTableViewCell.h
//  Ex_3
//
//  Created by Mariann Thomas on 8/10/19.
//  Copyright © 2019 Mariann Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *profilePicture;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *shortDescription;
@property (weak, nonatomic) IBOutlet UILabel *longDescription;

@end

NS_ASSUME_NONNULL_END
