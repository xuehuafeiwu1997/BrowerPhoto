//
//  BannerView.h
//  UIPageViewController实现轮播照片
//
//  Created by 许明洋 on 2019/8/26.
//  Copyright © 2019 许明洋. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^bannerResult)(NSInteger index);
@interface BannerView : UIView

- (void)initData:(NSArray *)arr block:(bannerResult)block;
-(void)openAuto;
-(void)closeAuto;

@end

NS_ASSUME_NONNULL_END
