//
//  LPModalViewController.m
//  Storyboard
//
//  Created by Michael La Plante on 9/21/13.
//  Copyright (c) 2013 Michael La Plante. All rights reserved.
//

#import "LPModalViewController.h"

@interface LPModalViewController ()

@end

@implementation LPModalViewController

- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onDoneTapped:(id)sender {
    
    [self.navigationController dismissViewControllerAnimated: YES
                                                  completion:nil];
}

@end
