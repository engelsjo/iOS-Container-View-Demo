//
//  FirstContainerTableViewController.m
//  test2
//
//  Created by Joshua Engelsma on 12/17/14.
//  Copyright (c) 2014 Joshua Engelsma. All rights reserved.
//

#import "FirstContainerVC.h"

@interface FirstContainerVC ()

@end

@implementation FirstContainerVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressed:(id)sender {
    [self.delegate didSelectFirstControllerCell:@"First VC item pressed"];
}

-(void)didSelectSecondControllerCell:(NSString*)textToSend
{
    [self.delegate didSelectFirstControllerCell:textToSend];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    SecondContainerVC* secondVC = [segue destinationViewController];
    secondVC.delegate = (id<SecondViewControllerDelegate>)self;
}

@end
