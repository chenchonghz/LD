//
//  DoctorPlatformButton.h
//  邻医家
//
//  Created by Daniel on 15/7/12.
//  Copyright (c) 2015年 DanielGrason. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LDPlatformButton : UIButton
+ (instancetype)platformBtnWithImage:(NSString *)image
                                     title:(NSString *)title
                                    target:(id)target
                                    action:(SEL)action;
@end
