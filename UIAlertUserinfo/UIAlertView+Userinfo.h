//
//  UIAlertView+Userinfo.h
//  UIAlertUserinfo
//
//  Created by Lancy on 22/5/13.
//  Copyright (c) 2013 GraceLancy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>

@interface UIAlertView (Userinfo)

@property (readwrite, copy) NSDictionary *userinfo;

@end
