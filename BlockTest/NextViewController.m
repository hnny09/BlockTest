//
//  NextViewController.m
//  BlockTest
//
//  Created by haitaozhang on 15/12/31.
//  Copyright © 2015年 YP. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@property (nonatomic, strong) int(^complete)(NSString *sting , int i );
@property (nonatomic, strong) void(^numberCallback)(NSString *number, int i);

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)resetVC:(int(^)(NSString *sting , int i ))complete
{
    self.complete = complete;
}

- (void)setNumberVC:(void(^)(NSString *sting , int i))numberCallback
{
    self.numberCallback = numberCallback;
}


- (IBAction)back:(id)sender {
    NSLog(@"%d",self.complete(@"safasfas", 2423423));
    if (self.numberCallback) {
        self.numberCallback(@"henannongyedaxue", 123456);
    }
    [self.navigationController popViewControllerAnimated:YES];
    
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
