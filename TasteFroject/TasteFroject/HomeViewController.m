//
//  HomeViewController.m
//  TasteFroject
//
//  Created by mac- t4 on 15/12/15.
//  Copyright (c) 2015年 上海科文麦格里实业有限公司. All rights reserved.
//

#import "HomeViewController.h"
#import "ClassifyView.h"

#import <DYMRollingBanner/DYMRollingBannerVC.h>

@interface HomeViewController (){
     DYMRollingBannerVC      *_rollingBannerVC;
}

@property (nonatomic, strong) UIScrollView *scrollView;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupUI];
}

- (void)setupUI{
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageWithColor:[[UIColor blackColor] colorWithAlphaComponent:0.3]] forBarMetrics:UIBarMetricsDefault];
    self.automaticallyAdjustsScrollViewInsets=NO;
    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc] init]];
    
    //_searchView.alpha = alpha;
    self.navigationController.navigationBar.alpha = 0.3;
   
    self.scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, screen_width, screen_height)];
    [self.view addSubview:_scrollView];
    
    _rollingBannerVC = [DYMRollingBannerVC new];
    [self addChildViewController:_rollingBannerVC];
    [_scrollView addSubview:_rollingBannerVC.view];
    
    [_rollingBannerVC.view mas_makeConstraints:^(MASConstraintMaker *make) {
       make.left.equalTo(@0);
       make.width.equalTo(@(_scrollView.frame.size.width));
       make.top.equalTo(@(-64));
       make.height.equalTo(@(264));
    }];
    
    [_rollingBannerVC didMoveToParentViewController:self];
    
    _rollingBannerVC.rollingInterval = 5;
    _rollingBannerVC.rollingImages = @[[UIImage imageNamed:@"advert1"]
                                           , [UIImage imageNamed:@"advert2"]
                                           , [UIImage imageNamed:@"advert3"]
                                           , [UIImage imageNamed:@"advert2"]    // Local Image
                                           , [UIImage imageNamed:@"advert3"]    // Locak Image
                                           ];
    
    [_rollingBannerVC addBannerTapHandler:^(NSInteger whichIndex) {
        
    }];
    
    [_rollingBannerVC startRolling];
    
    self.title = @"";
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"二维码" style:UIBarButtonItemStyleDone target:self action:@selector(clickLeftBtn:)];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"链接导航" style:UIBarButtonItemStyleDone target:self action:@selector(clickRightBtn:)];
    
    NSArray *titleArray = @[@"乳脂类", @"果蔬类", @"米面类", @"菌藻类", @"坚果类" ,@"豆谷类", @"焙烤品", @"肉水产", @"蛋与蜜", @"酒水类" ,@"其他类" ,@"众筹团购"];
    int index = 0;
    //分类
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 4; j++) {
            ClassifyView *classifyView = [[ClassifyView alloc]initWithFrame:CGRectMake(20+i*((screen_width-40)/3), 350+j*(((screen_width-40-10)/3+20)+5), (screen_width-40-10)/3, (screen_width-40-10)/3+20)];
            classifyView.tag = 100+index+1;
            classifyView.titleLB.text = [titleArray objectAtIndex:index];
            if ((j+1)%2) {
                classifyView.titleLB.backgroundColor = RGB(143, 219, 159);
            }else{
                classifyView.titleLB.backgroundColor = RGB(219, 189, 143);
            }
            classifyView.classifyImageView.image = [UIImage imageNamed:@"advert2"];
            [_scrollView addSubview:classifyView];
            index ++;
            
        }
    }
    
    ClassifyView *lastView = (ClassifyView*)[_scrollView viewWithTag:112];
    _scrollView.contentSize = CGSizeMake(screen_width, lastView.frame.origin.y+lastView.frame.size.height+64);
    
}

- (void)clickLeftBtn:(id)sender{
    
}

- (void)clickRightBtn:(id)sender{
    
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
