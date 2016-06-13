//
//  TabBarController.m
//  志同道合
//
//  Created by 羊羊羊～咩～ on 16/6/12.
//  Copyright © 2016年 羊羊羊～咩～. All rights reserved.
//

#import "TabBarController.h"
#import "NewsViewController.h"
#import "ForumViewController.h"
#import "ClassicsViewController.h"
#import "SettingViewController.h"
@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:(UIControlStateNormal)];
    [item setTitleTextAttributes:selectedAttrs forState:(UIControlStateHighlighted)];
    
    [self setupChildVc:[[NewsViewController alloc]init] title:@"新闻" image:@"tabBar_essence_icon" selectImage:@"tabBar_essence_click_icon"];
    [self setupChildVc:[[ForumViewController alloc] init] title:@"论坛" image:@"tabBar_essence_icon" selectImage:@"tabBar_essence_click_icon"];
    [self setupChildVc:[[ClassicsViewController alloc] init] title:@"经典" image:@"tabBar_essence_icon" selectImage:@"tabBar_essence_click_icon"];
    [self setupChildVc:[[SettingViewController alloc]init] title:@"设置" image:@"tabBar_essence_icon" selectImage:@"tabBar_essence_click_icon"];
    
    
    
    // Do any additional setup after loading the view.
}

//初始化tabbar上的子控制器
-(void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectImage:(NSString *)selectImage{

    //设置文字和图片
    vc.navigationItem.title = title;
    vc.tabBarItem.title = title;
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectImage];
    vc.tabBarItem.image = [UIImage imageNamed:image];
    
    vc.view.backgroundColor = [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:1.0];

    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    [self addChildViewController:nav];

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
