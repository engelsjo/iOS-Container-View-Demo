//
//  ViewController.m
//  test2
//
//  Created by Joshua Engelsma on 12/10/14.
//  Copyright (c) 2014 Joshua Engelsma. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)didSelectFirstControllerCell:(NSString*)textToSend
{
    self.myLabel.text = textToSend;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //embed segue called when application loads
    UIViewController * vc = segue.destinationViewController;
    FirstContainerVC* firstSelectVC = [vc childViewControllers][0];
    
    firstSelectVC.delegate = self;
}

@end
