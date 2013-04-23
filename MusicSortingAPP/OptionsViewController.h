//
//  OptionsViewController.h
//  MusicSortingAPP
//
//  Created by Carsten Graf on 09.04.13.
//  Copyright (c) 2013 Carsten Graf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OptionsViewController : UIViewController
{

}

@property (strong, nonatomic) IBOutlet UITextField *nameButtonLU;
@property (strong, nonatomic) IBOutlet UITextField *nameButtonRU;
@property (strong, nonatomic) IBOutlet UITextField *nameButtonLD;
@property (strong, nonatomic) IBOutlet UITextField *nameButtonRD;

- (IBAction)hideKeyboard:(id)sender;

- (IBAction)setNames:(id)sender;

@end
