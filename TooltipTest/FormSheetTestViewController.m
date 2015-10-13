//
//  FormSheetTestViewController.m
//  TooltipTest
//
//  Created by Petr Škorňok on 12.10.15.
//  Copyright © 2015 Petr Škorňok. All rights reserved.
//

#import "FormSheetTestViewController.h"

@interface FormSheetTestViewController ()

@end

@implementation FormSheetTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(20, 20, 100, 40);
    button.backgroundColor = [UIColor greenColor];
    [button addTarget:self action:@selector(viewTapped) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)viewTapped {
    NSLog(@"tapped button");
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
