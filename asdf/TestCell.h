//
//  TestCell.h
//  asdf
//
//  Created by 钟天任 on 15/11/26.
//  Copyright © 2015年 钟天任. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *tImageView;
@property (strong, nonatomic) IBOutlet UILabel *tLabel;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *labelToBottom;

@end
