//
//  InviteDetailController.h
//  邻医家
//
//  Created by Daniel on 15/6/8.
//  Copyright (c) 2015年 DanielGrason. All rights reserved.
//
@class InviteDocMessage;
#import "LDMessageController.h"
@interface InviteDetailController : LDMessageController
@property (nonatomic,strong) InviteDocMessage *message;
@end
