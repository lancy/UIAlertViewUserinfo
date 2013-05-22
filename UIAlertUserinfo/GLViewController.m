//
//  GLViewController.m
//  UIAlertUserinfo
//
//  Created by Lancy on 21/5/13.
//  Copyright (c) 2013 GraceLancy. All rights reserved.
//

#import "GLViewController.h"
#import "UIAlertView+Userinfo.h"

@interface GLViewController () <UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation GLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)didTapAlertOneButton:(id)sender {
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert One" message:@"I gonna show the userinfo" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert setUserinfo:@{@"message": @"I'm userinfo of alert one"}];
    [alert show];
}
- (IBAction)didTapAelrtTwoButton:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert two" message:@"I gonna show the userinfo" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert setUserinfo:@{@"message": @"I'm userinfo of alert two"}];
    [alert show];

}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    [self.label setText:alertView.userinfo[@"message"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
