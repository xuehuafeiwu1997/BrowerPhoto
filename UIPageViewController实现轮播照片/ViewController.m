//
//  ViewController.m
//  UIPageViewController实现轮播照片
//
//  Created by 许明洋 on 2019/8/26.
//  Copyright © 2019 许明洋. All rights reserved.
//

#import "ViewController.h"
#import "BannerView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    BannerView *ban = [[BannerView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 200)];
    [self.view addSubview:ban];
    
    NSArray *arr = @[@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566906020383&di=62d4f64f26cea11c4123e2de9248cd73&imgtype=0&src=http%3A%2F%2Fgss0.baidu.com%2F9vo3dSag_xI4khGko9WTAnF6hhy%2Fzhidao%2Fpic%2Fitem%2Fdcc451da81cb39db9736fcccdb160924aa1830b1.jpg",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566908115481&di=71bac2b70bcfe58bd25760db9b169024&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Fa047803313f9c8830456ae906220c29c424930301e1d3-LKjeKY_fw658",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566908115481&di=e5e0e42b0de2bfa665ba2fc1a0b8ba9e&imgtype=0&src=http%3A%2F%2Fwww.cnnb.com.cn%2Fpic%2F0%2F01%2F53%2F07%2F1530796_001666.jpg"];
    ban.backgroundColor = [UIColor redColor];
    
    [ban initData:arr block:^(NSInteger index) {
        NSLog(@"点击了第%lu页",index);
    }];
    [ban openAuto];
}


@end
