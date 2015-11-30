//
//  MasonryCell.m
//  asdf
//
//  Created by 钟天任 on 15/11/25.
//  Copyright © 2015年 钟天任. All rights reserved.
//

#import "MasonryCell.h"
#import "Masonry.h"

@implementation MasonryCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _masonryLabel = [UILabel new];
        _masonryLabel.numberOfLines = 0;
        [self.contentView addSubview:_masonryLabel];
        
        _masonryImageView = [UIImageView new];
        _masonryImageView.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:_masonryImageView];
        
        [_masonryImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@20);
            make.left.equalTo(@20);
            make.right.equalTo(@-20);
            make.height.equalTo(@60);
        }];
        
        [_masonryLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(_masonryImageView.mas_bottom).with.offset(20);
            make.left.equalTo(@20);
            make.right.equalTo(@-20);
            make.bottom.equalTo(@-30);
        }];
    }
    return self;
}



@end
