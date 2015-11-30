//
//  ViewController.m
//  asdf
//
//  Created by 钟天任 on 15/11/24.
//  Copyright © 2015年 钟天任. All rights reserved.
//

#import "ViewController.h"
#import "MasonryCell.h"
#import "TestCell.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate> {
    UITableView *tableV;
}

@end

static NSString *Identifier = @"asfd";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    tableV = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    tableV.frame = CGRectOffset(tableV.frame, 0, 20);
    tableV.delegate = self;
    tableV.dataSource = self;
    tableV.rowHeight = UITableViewAutomaticDimension;
    tableV.estimatedRowHeight = 100;
    [tableV registerNib:[UINib nibWithNibName:@"TestCell" bundle:nil] forCellReuseIdentifier:Identifier];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(30, 30, 40, 40)];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(presentVC) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:tableV];
    [self.view addSubview:button];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (void)presentVC {
    NSLog(@"%@",ww);
//    AutolayoutVC * vc = [[Autola youtVC alloc] init];
//    [self presentViewController:vc animated:YES completion:nil];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TestCell *cell = [tableView dequeueReusableCellWithIdentifier:Identifier forIndexPath:indexPath];
    
    switch (indexPath.row) {
        case 0:
            cell.tLabel.text = @"fdjkdfsasdfsadfasdfsadf11";

            break;
        case 1:
            cell.tLabel.text = @"fdjkdfsafdjkdfsasdfsadfasdfsadfsdfsadfasdfsadf11";
            break;
        case 2:
            cell.tLabel.text = @"fdjkdfsasfdjkdfsasdfsadfasdfsadffdjkdfsasdfsadfasdfsadffdjkdfsasdfsadfasdfsadfdfsadfasdfsadf11";
            break;
        case 3:
            cell.tLabel.text = @"fdjkdfsasdffdjkdfsasdfsadfasdfsadffdjkdfsasdfsasdfsadfdfsasdfsadfdfsasdfsadfdfsasdfsadfdfsadfasdfsadffdjkdfsasdfsadfasdfsadffdjkdfsasdfsadfasdfsadfsadfasdfsadf1111";
            break;

        default:
            break;
    }
    
    
    if (indexPath.row % 2 == 1) {
        cell.tImageView.hidden = YES;
        cell.labelToBottom.priority = UILayoutPriorityDefaultHigh;
    }
    else {
        cell.tImageView.hidden = NO;
        cell.labelToBottom.priority = UILayoutPriorityDefaultLow;
    }
    
    
//    MasonryCell *cell = [tableView dequeueReusableCellWithIdentifier:Identifier];
//    if (!cell) {
//        cell = [[MasonryCell alloc] initWithStyle:0 reuseIdentifier:Identifier];
//    }
//    switch (indexPath.row) {
//        case 0:
//            cell.masonryLabel.text = @"fdjkdfsasdfsadfasdfsadf11";
//            
//            break;
//        case 1:
//            cell.masonryLabel.text = @"fdjkdfsafdjkdfsasdfsadfasdfsadfsdfsadfasdfsadf11";
//            break;
//        case 2:
//            cell.masonryLabel.text = @"fdjkdfsasfdjkdfsasdfsadfasdfsadffdjkdfsasdfsadfasdfsadffdjkdfsasdfsadfasdfsadfdfsadfasdfsadf11";
//            break;
//        case 3:
//            cell.masonryLabel.text = @"fdjkdfsasdffdjkdfsasdfsadfasdfsadffdjkdfsasdfsasdfsadfdfsasdfsadfdfsasdfsadfdfsasdfsadfdfsadfasdfsadffdjkdfsasdfsadfasdfsadffdjkdfsasdfsadfasdfsadfsadfasdfsadf1111";
//            break;
//            
//        default:
//            break;
//    }
    return cell;
}


@end
