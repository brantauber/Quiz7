//
//  QuizDetailViewController.m
//  Quiz 7
//
//  Created by Brandon on 4/7/14.
//  Copyright (c) 2014 Brandon Tauber. All rights reserved.
//

#import "QuizDetailViewController.h"

@interface QuizDetailViewController ()
- (void)configureView;
@end

@implementation QuizDetailViewController
@synthesize dismissBlock;
#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        [self.nameField setText:[self.detailItem name]];
        [self.urgencySlider setValue:[self.detailItem urgency]];
        [self.urgencyLabel setText:[NSString stringWithFormat:@"Urgency: %.02f",[self.detailItem urgency]]];
        [self.datePicker setDate:[self.detailItem dueDate]];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save:(id)sender {
    [self.detailItem setName:[self.nameField text]];
    [self.detailItem setUrgency:[self.urgencySlider value]];
    [self.detailItem setDueDate:[self.datePicker date]];
    [self.presentingViewController dismissViewControllerAnimated:NO completion:dismissBlock];
}

- (IBAction)urgencyChanged:(id)sender {
    [self.urgencyLabel setText:[NSString stringWithFormat:@"Urgency: %.02f", [self.urgencySlider value]]];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.nameField resignFirstResponder];
}

@end
