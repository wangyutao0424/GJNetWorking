//
//  ViewController.m
//  GJNetWorkingDemo
//
//  Created by wangyutao on 15/12/8.
//  Copyright © 2015年 wangyutao. All rights reserved.
//

#import "ViewController.h"
#import "MYRequest.h"
#import "GCTestModel.h"
#import "GCStatus.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MYRequest *request = [MYRequest new];
    [request startWithCompletedBlock:^(GJBaseRequest *request) {
        GCTestModel *model = (GCTestModel*)request.responseObject;
        NSLog(@"%@",model);

    }];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
