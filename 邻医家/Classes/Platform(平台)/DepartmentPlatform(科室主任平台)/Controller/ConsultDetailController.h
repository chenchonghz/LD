//
//  ConsultDetailController.h
//  邻医家
//
//  Created by Daniel on 15/6/19.
//  Copyright (c) 2015年 DanielGrason. All rights reserved.
//
@class ConsultMessage;
#import "LDMessageController.h"
@interface ConsultDetailController : LDMessageController
@property (nonatomic,strong) ConsultMessage *message;
@end
