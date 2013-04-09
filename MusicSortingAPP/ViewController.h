//
//  ViewController.h
//  MusicSortingAPP
//
//  Created by Carsten Graf on 07.04.13.
//  Copyright (c) 2013 Carsten Graf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController  <MPMediaPickerControllerDelegate>
{
    
    MPMusicPlayerController *musicPlayer;
    
    IBOutlet UILabel *titleLabel;
    IBOutlet UILabel *artistLabel;
    IBOutlet UILabel *albumLabel;
    
    IBOutlet UISlider *volumeSlider;
    
    IBOutlet UIButton *playPauseButton;
    
    
}

- (IBAction)showMediaPicker:(id)sender;

- (IBAction)volumeChanged:(id)sender;

- (IBAction)previousSong:(id)sender;
- (IBAction)playPause:(id)sender;
- (IBAction)nextSong:(id)sender;

- (void) registerMediaPlayerNotifications;

@end
