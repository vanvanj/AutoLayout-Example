//
//  AutolayoutVC.m
//  asdf
//
//  Created by 钟天任 on 15/11/26.
//  Copyright © 2015年 钟天任. All rights reserved.
//

#import "AutolayoutVC.h"

@interface AutolayoutVC ()

@property (strong, nonatomic) IBOutlet UIView *purpleView;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *centerY;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *purpleToTop;

@end

@implementation AutolayoutVC

- (void)viewDidLoad {
    [super viewDidLoad];
    _purpleView.userInteractionEnabled = YES;
    [_purpleView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(move)]];
}

- (void)move {
    [UIView animateWithDuration:0.5 animations:^{
        if (_centerY.priority == UILayoutPriorityDefaultLow) {
            _centerY.priority = UILayoutPriorityDefaultHigh;
        }
        else {
            _centerY.priority = UILayoutPriorityDefaultLow;
        }
        [self.view layoutIfNeeded];
    }];

}


@end
