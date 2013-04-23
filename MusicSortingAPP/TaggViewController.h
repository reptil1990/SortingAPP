//
//  TaggViewController.h
//  MusicSortingAPP
//
//  Created by Carsten Graf on 09.04.13.
//  Copyright (c) 2013 Carsten Graf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import "ViewController.h"

@interface TaggViewController : UIViewController

{
    MPMusicPlayerController *musicPlayer;
  
    IBOutlet UIButton *playPauseButton;
    
}

@property (strong, readwrite) NSString *stringButtonLU;
@property (strong, readwrite) NSString *stringButtonRU;
@property (strong, readwrite) NSString *stringButtonLD;
@property (strong, readwrite) NSString *stringButtonRD;

@property (strong, readwrite) IBOutlet UIButton *ButtonLU;
@property (strong, readwrite) IBOutlet UIButton *ButtonRU;
@property (strong, readwrite) IBOutlet UIButton *ButtonLD;
@property (strong, readwrite) IBOutlet UIButton *ButtonRD;

@property (strong, readwrite) NSMutableArray *countCat1;
@property (strong, readwrite) NSMutableDictionary *dictCat1;
@property (strong, readwrite) NSMutableArray *countCat2;
@property (strong, readwrite) NSMutableDictionary *dictCat2;
@property (strong, readwrite) NSMutableArray *countCat3;
@property (strong, readwrite) NSMutableDictionary *dictCat3;
@property (strong, readwrite) NSMutableArray *countCat4;
@property (strong, readwrite) NSMutableDictionary *dictCat4;



- (IBAction)playPause:(id)sender;


- (IBAction)ActionButton:(id)sender;
-(IBAction)NextView:(id)sender;



@end
