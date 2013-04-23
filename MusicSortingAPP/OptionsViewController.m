//
//  OptionsViewController.m
//  MusicSortingAPP
//
//  Created by Carsten Graf on 09.04.13.
//  Copyright (c) 2013 Carsten Graf. All rights reserved.
//

#import "OptionsViewController.h"
#import "TaggViewController.h"

@interface OptionsViewController ()

@end

@implementation OptionsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    

}


-(void)viewDidAppear:(BOOL)animated
{

    NSLog(@"OptionViewController didAppear");
    
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    _nameButtonLD.text = [defaults stringForKey:@"TextButtonLD"];
    _nameButtonLU.text = [defaults stringForKey:@"TextButtonLU"];
    _nameButtonRU.text = [defaults stringForKey:@"TextButtonRU"];
    _nameButtonRD.text = [defaults stringForKey:@"TextButtonRD"];

     NSLog(@"LD: %@",[defaults objectForKey:@"TextButtonLD"]);
    NSLog(@"LU: %@",[defaults objectForKey:@"TextButtonLU"]);
    NSLog(@"RU: %@",[defaults objectForKey:@"TextButtonRU"]);
    NSLog(@"RD: %@",[defaults objectForKey:@"TextButtonRD"]);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)hideKeyboard:(id)sender {
    
    [sender resignFirstResponder];
}

- (IBAction)setNames:(id)sender {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:_nameButtonLD.text forKey:@"TextButtonLD"];
    [defaults setObject:_nameButtonRD.text forKey:@"TextButtonRD"];
    [defaults setObject:_nameButtonLU.text forKey:@"TextButtonLU"];
    [defaults setObject:_nameButtonRU.text forKey:@"TextButtonRU"];
    
    [defaults synchronize];
    
    UIAlertView *myAlert = [[UIAlertView alloc]initWithTitle:@"Succsess" message:@"Your Categories are set!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [myAlert show];
    
    
}
@end
