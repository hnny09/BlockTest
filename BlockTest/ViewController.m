//
//  ViewController.m
//  BlockTest
//
//  Created by haitaozhang on 15/12/31.
//  Copyright © 2015年 YP. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];    
}


- (IBAction)next:(id)sender {
    int (^complete)(NSString *sting , int i ) =  ^ int(NSString *sting , int i) {
        NSLog(@"%@--%d",sting, i);
        return 3;
    };
    void(^NextCallback)(NSString *number, int i) = ^(NSString *number , int i ) {
        NSLog(@"%@--%d",number, i);
    };
    NextViewController *nextVC = [self.storyboard instantiateViewControllerWithIdentifier:@"NextViewController"];
    [nextVC resetVC:complete];
    [nextVC setNumberVC:NextCallback];
    [self.navigationController pushViewController:nextVC animated:YES];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
