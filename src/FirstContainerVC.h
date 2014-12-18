//
//  FirstContainerTableViewController.h
//  test2
//
//  Created by Joshua Engelsma on 12/17/14.
//  Copyright (c) 2014 Joshua Engelsma. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondContainerVC.h"
@protocol FirstViewControllerDelegate <NSObject>
@required
- (void)didSelectFirstControllerCell:(NSString*)textToSend;
@end

@interface FirstContainerVC : UIViewController

@property (nonatomic, weak) id <FirstViewControllerDelegate> delegate;

@end
