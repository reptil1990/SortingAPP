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
    
    NSMutableDictionary *dictCat1;
    NSMutableDictionary *dictCat2;
    NSMutableDictionary *dictCat3;
    NSMutableDictionary *dictCat4;

}

@property (strong, nonatomic) IBOutlet UIButton *ButtonLU;
@property (strong, nonatomic) IBOutlet UIButton *ButtonRU;
@property (strong, nonatomic) IBOutlet UIButton *ButtonLD;
@property (strong, nonatomic) IBOutlet UIButton *ButtonRD;





- (IBAction)ActionButtonLU:(id)sender;
- (IBAction)ActionButtonRU:(id)sender;
- (IBAction)ActionButtonLD:(id)sender;
- (IBAction)ActionButtonRD:(id)sender;




@end
