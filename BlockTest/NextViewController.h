//
//  NextViewController.h
//  BlockTest
//
//  Created by haitaozhang on 15/12/31.
//  Copyright © 2015年 YP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NextViewController : UIViewController

- (void)resetVC:(int(^)(NSString *sting , int i )) complete;

- (void)setNumberVC:(void(^)(NSString *sting , int i))numberCallback;

@end
