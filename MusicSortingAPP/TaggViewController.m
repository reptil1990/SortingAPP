//
//  TaggViewController.m
//  MusicSortingAPP
//
//  Created by Carsten Graf on 09.04.13.
//  Copyright (c) 2013 Carsten Graf. All rights reserved.
//

#import "TaggViewController.h"
#import "OptionsViewController.h"
#import "ResultViewController.h"

@interface TaggViewController ()

@end

@implementation TaggViewController

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
    
    NSLog(@"TaggViewController ViewDidLoad");

    _countCat1 = [NSMutableArray array];
    _countCat2 = [NSMutableArray array];
    _countCat3 = [NSMutableArray array];
    _countCat4 = [NSMutableArray array];
    
    
    
    musicPlayer = [MPMusicPlayerController iPodMusicPlayer];
    
    
    if ([musicPlayer playbackState] == MPMusicPlaybackStatePlaying) {
        
        [playPauseButton setImage:[UIImage imageNamed:@"pauseButton.png"] forState:UIControlStateNormal];
        
    } else {
        
        [playPauseButton setImage:[UIImage imageNamed:@"playButton.png"] forState:UIControlStateNormal];
    }
[self registerMediaPlayerNotifications];
    
}


-(void)viewDidAppear:(BOOL)animated
{
NSLog(@"TaggViewController ViewDidAppear");
    
    [self setButtonNames];

    
}


- (void) registerMediaPlayerNotifications
{
    NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
    
	
	[notificationCenter addObserver: self
						   selector: @selector (handle_PlaybackStateChanged:)
							   name: MPMusicPlayerControllerPlaybackStateDidChangeNotification
							 object: musicPlayer];
    
    
	[musicPlayer beginGeneratingPlaybackNotifications];
}


- (void) handle_PlaybackStateChanged: (id) notification
{
    MPMusicPlaybackState playbackState = [musicPlayer playbackState];
	
	if (playbackState == MPMusicPlaybackStatePaused) {
        [playPauseButton setImage:[UIImage imageNamed:@"playButton.png"] forState:UIControlStateNormal];
        
        
	} else if (playbackState == MPMusicPlaybackStatePlaying) {
        [playPauseButton setImage:[UIImage imageNamed:@"pauseButton.png"] forState:UIControlStateNormal];
        
	} else if (playbackState == MPMusicPlaybackStateStopped) {
        
        [playPauseButton setImage:[UIImage imageNamed:@"playButton.png"] forState:UIControlStateNormal];
		[musicPlayer stop];
        
	}
    
}


-(IBAction)playPause:(id)sender
{
    if ([musicPlayer playbackState] == MPMusicPlaybackStatePlaying) {
        [musicPlayer pause];
        
    } else {
        [musicPlayer play];
        
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ActionButton:(id)sender
{
    
    if ([musicPlayer playbackState] == MPMusicPlaybackStatePaused )
    {
        [musicPlayer play];
        return;
    }
    
    MPMediaItem *currentItem = [musicPlayer nowPlayingItem];
    
    NSString *titleString = [currentItem valueForProperty:MPMediaItemPropertyTitle];
    NSString *artistString = [currentItem valueForProperty:MPMediaItemPropertyArtist];
    NSString *albumString = [currentItem valueForProperty:MPMediaItemPropertyAlbumTitle];

    if (titleString == nil) {
        titleString = @"";
    }
    if (artistString == nil) {
        artistString = @"";
    }
    if (albumString == nil) {
        albumString = @"";
    }

    
    switch ([sender tag]) {
        case 0:
            [_countCat1 addObject:@{ @"Title": titleString,
             @"Artist": artistString,
             @"Album": albumString }];
            break;
        case 1:
            [_countCat2 addObject:@{ @"Title": titleString,
             @"Artist": artistString,
             @"Album": albumString }];
            break;
            case 2:
            [_countCat3 addObject:@{ @"Title": titleString,
             @"Artist": artistString,
             @"Album": albumString }];
            break;
            case 3:
            [_countCat4 addObject:@{ @"Title": titleString,
             @"Artist": artistString,
             @"Album": albumString }];
            break;
        default:
            break;
    }
    
    
    if ([musicPlayer playbackState] == MPMusicPlaybackStatePlaying )
    {
        [musicPlayer skipToNextItem];
    }

 switch([sender tag])
{
    case 0:
        NSLog(@"Dict1 entrys: %@",_countCat1);
        break;
    case 1:
        NSLog(@"Dict2 entrys: %@",_countCat2);
        break;
    case 2:
        NSLog(@"Dict3 entrys: %@",_countCat3);
        break;
    case 3:
        NSLog(@"Dict4 entrys: %@",_countCat4);
        break;
    default:
        break;

}

    [self setButtonNames];

}


-(void)setButtonNames
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    _stringButtonLD = [defaults stringForKey:@"TextButtonLD"];
    _stringButtonLU = [defaults stringForKey:@"TextButtonLU"];
    _stringButtonRU = [defaults stringForKey:@"TextButtonRU"];
    _stringButtonRD = [defaults stringForKey:@"TextButtonRD"];
    
    if (_stringButtonLD == nil || _stringButtonLU == nil || _stringButtonRU == nil || _stringButtonRD == nil) {
        UIAlertView *setCategories = [[UIAlertView alloc]initWithTitle:@"Set Categories" message:@"Please set Your Categories" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        
        [setCategories show];
        
    }

    
    
    
    self.ButtonLD.titleLabel.text = _stringButtonLD;
    self.ButtonRD.titleLabel.text = _stringButtonRD;
    self.ButtonLU.titleLabel.text = _stringButtonLU;
    self.ButtonRU.titleLabel.text = _stringButtonRU;


}

-(IBAction)NextView:(id)sender
{
    
    ResultViewController * myVC = [[ResultViewController alloc] initWithNibName:nil bundle:nil];
    myVC.ResultCat1 = _countCat1;
    myVC.ResultCat2 = _countCat2;
    myVC.ResultCat3 = _countCat3;
    myVC.ResultCat4 = _countCat4;
    myVC.NameCat1 = _stringButtonLU;
    myVC.NameCat2 = _stringButtonRU;
    myVC.NameCat3 = _stringButtonLD;
    myVC.NameCat4 = _stringButtonRD;
    
    [self.navigationController pushViewController:myVC animated:YES];

}



@end
