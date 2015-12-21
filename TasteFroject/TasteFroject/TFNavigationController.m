//
//  TFNavigationController.m
//  TasteFroject
//
//  Created by mac- t4 on 15/12/15.
//  Copyright (c) 2015年 上海科文麦格里实业有限公司. All rights reserved.
//

#import "TFNavigationController.h"

@interface TFNavigationController ()

@end

@implementation TFNavigationController

- (id)initWithRootViewController:(UIViewController *)rootViewController{
    if ([super initWithRootViewController:rootViewController]) {
        
        //[self.navigationBar setHidden:YES];
//        self.navigationBarHidden = YES;
//        [self.navigationItem.titleView setHidden:NO];
//        [self.navigationController.navigationBar setBackgroundImage:[UIImage imageWithColor:[[UIColor clearColor] colorWithAlphaComponent:0]] forBarMetrics:UIBarMetricsDefault];
//        self.automaticallyAdjustsScrollViewInsets=NO;
//        [self.navigationController.navigationBar setShadowImage:[[UIImage alloc] init]];
//        
//        UIToolbar *toolBar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, screen_width, 64)];
//        toolBar.backgroundColor = [UIColor redColor];
//        [rootViewController.view addSubview:toolBar];
        self.navigationBar.tintColor = [UIColor whiteColor];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
