//
//  ViewController.m
//  WSLineChart
//
//  Created by iMac on 16/11/14.
//  Copyright © 2016年 zws. All rights reserved.
//

#import "ViewController.h"
#import "WSLineChartView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:85.0f/255.0f green:85.0f/255.0f blue:85.0f/255.0f alpha:1.0f];
    NSMutableArray *xArray = [NSMutableArray array];
    NSMutableArray *yArray = [NSMutableArray array];
    NSMutableArray *yArray2 = [NSMutableArray array];
    for (NSInteger i = 0; i < 9; i++) {
        [xArray addObject:[NSString stringWithFormat:@"%@",@"2018-07-28"]];
        [yArray addObject:[NSString stringWithFormat:@"%.2lf",5000.0+arc4random_uniform(10000)]];
        [yArray2 addObject:[NSString stringWithFormat:@"%.2lf",6000.0+arc4random_uniform(10000)]];
    }
    WSLineChartView *wsLine = [[WSLineChartView alloc]initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height - 110) xTitleArray:xArray yValueArray:yArray yValueArray2:yArray2 yMax:15000 yMin:0];
    [self.view addSubview:wsLine];
    
}
@end
