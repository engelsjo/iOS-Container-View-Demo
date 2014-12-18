//
//  SecondContainerTableViewController.h
//  test2
//
//  Created by Joshua Engelsma on 12/17/14.
//  Copyright (c) 2014 Joshua Engelsma. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol SecondViewControllerDelegate <NSObject>
@required
- (void)didSelectSecondControllerCell:(NSString*)textToSend;
@end

@interface SecondContainerVC : UIViewController

@property (nonatomic, weak) id <SecondViewControllerDelegate> delegate;

@end
