//
//  LDTabBarViewController.m
//  邻医家
//
//  Created by Daniel on 15/5/15.
//  Copyright (c) 2015年 DanielGrason. All rights reserved.
//
#import "PublicHomeController.h"
#import "RDVTabBarItem.h"
#import "EnterViewController.h"
#import "IWMeViewController.h"
#import "LDTabBarViewController.h"
#import "IWNavigationController.h"
@interface LDTabBarViewController ()

@end

@implementation LDTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupViewControllers];
    [self customizeTabBar];
}
- (void)setupViewControllers
{
    PublicHomeController *home = [[PublicHomeController alloc] init];
    IWNavigationController *nav1 = [[IWNavigationController alloc] initWithRootViewController:home];
    
    EnterViewController *recruit = [[EnterViewController alloc] init];
    IWNavigationController *nav2 = [[IWNavigationController alloc] initWithRootViewController:recruit];
    
    IWMeViewController *me = [[IWMeViewController alloc] init];
    IWNavigationController *nav3 = [[IWNavigationController alloc] initWithRootViewController:me];
    [self setViewControllers:@[nav1,nav2,nav3]];
}
- (void)customizeTabBar
{
    NSArray *unselectedImages = @[@"tab_guide",@"tab_diary",@"tab_settings"];
    NSArray *selectedImages = @[@"tab_guide_click",@"tab_diary_click",@"tab_settings_click"];
    NSArray *titles = @[@"首页",@"入驻",@"设置"];
    
    NSInteger index = 0;
    for (RDVTabBarItem *item in [[self tabBar] items]) {
        UIImage *selectedImage = [UIImage imageNamed:[selectedImages objectAtIndex:index]];
        UIImage *unselectedImage = [UIImage imageNamed:[unselectedImages objectAtIndex:index]];
        [item setFinishedSelectedImage:selectedImage withFinishedUnselectedImage:unselectedImage];
        item.title = [titles objectAtIndex:index];
        index++;
    }
}

@end







