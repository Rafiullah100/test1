//
//  ViewController.m
//  TextOverlayOnImg
//
//  Created by Romi_Khan on 22/10/2017.
//  Copyright © 2017 SoftBrain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_imgeview setImage:[UIImage imageNamed:@"cake2.jpg"]];
    UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 500, 250, 40)];
    myLabel.text = @"Hello There";
    myLabel.textColor = [UIColor blackColor];
    myLabel.font=[UIFont fontWithName:@"Marker Felt" size:35];
    [_imgeview addSubview:myLabel];
    [_imgeview setUserInteractionEnabled:YES];
    [myLabel setUserInteractionEnabled:YES];
//    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanGesture:)];
//    [panGesture setMinimumNumberOfTouches:1];
//    [panGesture setMaximumNumberOfTouches:1];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
