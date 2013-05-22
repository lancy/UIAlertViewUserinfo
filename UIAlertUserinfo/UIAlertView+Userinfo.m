//
//  UIAlertView+Userinfo.m
//  UIAlertUserinfo
//
//  Created by Lancy on 22/5/13.
//  Copyright (c) 2013 GraceLancy. All rights reserved.
//

#import "UIAlertView+Userinfo.h"

@implementation UIAlertView (Userinfo)

static char userinfoKey;

- (NSDictionary *)userinfo
{
    return objc_getAssociatedObject(self, &userinfoKey);
}

- (void)setUserinfo:(NSDictionary *)userinfo
{
    objc_setAssociatedObject(self, &userinfoKey, userinfo, OBJC_ASSOCIATION_COPY);
}

@end
