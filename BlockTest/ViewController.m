//
//  ViewController.m
//  BlockTest
//
//  Created by haitaozhang on 15/12/31.
//  Copyright © 2015年 YP. All rights reserved.
//

#import "ViewController.h"

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
     int aa =  complete(@"1",3);
    NSLog(@"aaaaa-------%d",aa);
    void(^NextCallback)(NSString *number, int i) = ^(NSString *number , int i ) {
        NSLog(@"%@--%d",number, i);
    };
    NextCallback(@"33333333",3);
    
    NSLog(@"sfsfserewrwerw----%@",@"zheshiygeceshi ");
    
    NSLog(@"33333333");
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
