//
//  ViewController.m
//  TooltipTest
//
//  Created by Petr Škorňok on 12.10.15.
//  Copyright © 2015 Petr Škorňok. All rights reserved.
//

#import "ViewController.h"
#import "FormSheetTestViewController.h"

#import <MZFormSheetController.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped)];
    [self.view addGestureRecognizer:tapGestureRecognizer];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    FormSheetTestViewController *tooltipVC = [[FormSheetTestViewController alloc] init];
    [[MZFormSheetController sharedBackgroundWindow] setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.3]];
    MZFormSheetController *formSheet = [[MZFormSheetController alloc] initWithViewController:tooltipVC];
    formSheet.shouldCenterVertically = YES;
    formSheet.formSheetWindow.transparentTouchEnabled = YES;
    formSheet.transitionStyle = MZFormSheetTransitionStyleSlideFromBottom;
    formSheet.presentedFormSheetSize = CGSizeMake(200, 200);
    [self mz_presentFormSheetController:formSheet animated:YES completionHandler:nil];
}

- (void)viewTapped {
    NSLog(@"tapped");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
