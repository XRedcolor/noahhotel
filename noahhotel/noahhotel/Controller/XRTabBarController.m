//
//  XRTabBarController.m
//  noahhotel
//
//  Created by XRedcolor on 15/8/4.
//  Copyright (c) 2015年 mirror. All rights reserved.
//

#import "XRTabBarController.h"

#define ShowLoginNavigationController_Delay 0.5

@interface XRTabBarController ()

@end

@implementation XRTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self performSelector:@selector(showLoginNavigationController) withObject:nil afterDelay:ShowLoginNavigationController_Delay];
}

/**
 *  显示登录界面
 */
- (void)showLoginNavigationController
{
    UIStoryboard *userLoginStoryboard = [UIStoryboard storyboardWithName:UserLogin_Storyboard_Name bundle:[NSBundle mainBundle]];
    id LoginNavigationControllerTemp = [userLoginStoryboard instantiateViewControllerWithIdentifier:LoginNavigationController_Storyboard_ID];
    
    if ([LoginNavigationControllerTemp isKindOfClass:[UINavigationController class]]) {
        UINavigationController *LoginNavigationController = (UINavigationController *)LoginNavigationControllerTemp;
        [self presentViewController:LoginNavigationController animated:YES completion:nil];
    }
}

@end
