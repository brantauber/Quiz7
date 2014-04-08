//
//  QuizDetailViewController.h
//  Quiz 7
//
//  Created by Brandon on 4/7/14.
//  Copyright (c) 2014 Brandon Tauber. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"

@interface QuizDetailViewController : UIViewController

@property (strong, nonatomic) Task *detailItem;
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UILabel *urgencyLabel;
@property (weak, nonatomic) IBOutlet UISlider *urgencySlider;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
- (IBAction)save:(id)sender;
- (IBAction)urgencyChanged:(id)sender;
@property (nonatomic, copy) void (^dismissBlock)(void);

@end
