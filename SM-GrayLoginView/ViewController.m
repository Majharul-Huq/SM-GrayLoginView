//
//  ViewController.m
//  SM-GrayLoginView
//
//  Created by Huq Majharul on 1/12/16.
//  Copyright © 2016 Huq Majharul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // View Gradient Color
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = self.view.bounds;
    gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor lightGrayColor] CGColor],
                                                (id)[[UIColor blackColor] CGColor],
                                                (id)[[UIColor grayColor] CGColor],nil];
    [self.view.layer insertSublayer:gradient atIndex:0];
    
    imageViewLogo.tintColor = [UIColor whiteColor];
    imageViewLogo.image = [imageViewLogo.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    [imageViewLogo.layer setBorderColor:[UIColor whiteColor].CGColor];
    [imageViewLogo.layer setBorderWidth:4.0f];
    [imageViewLogo.layer setCornerRadius:imageViewLogo.image.size.width / 2];
    imageViewLogo.layer.masksToBounds = YES;
    
    [buttonLogin.layer setCornerRadius:2.0f];
    buttonLogin.backgroundColor = [UIColor colorWithWhite:1.0f alpha:0.3];
    [buttonLogin.layer setBorderColor:[UIColor whiteColor].CGColor];
    [buttonLogin.layer setBorderWidth:2.0f];
    [buttonLogin setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    viewUserId.backgroundColor  = [UIColor clearColor];
    [viewUserId.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    [viewUserId.layer setBorderWidth:1.0f];
    [viewUserId.layer setCornerRadius:2.0f];
    
    viewPassword.backgroundColor  = [UIColor clearColor];
    [viewPassword.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    [viewPassword.layer setBorderWidth:1.0f];
    [viewPassword.layer setCornerRadius:2.0f];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
