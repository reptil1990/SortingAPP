//
//  TaggViewController.m
//  MusicSortingAPP
//
//  Created by Carsten Graf on 09.04.13.
//  Copyright (c) 2013 Carsten Graf. All rights reserved.
//

#import "TaggViewController.h"

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
	
    
    
}


-(void)viewDidAppear:(BOOL)animated
{

    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ActionButtonLU:(id)sender
{
    MPMediaItem *currentItem = [musicPlayer nowPlayingItem];
    
    NSString *titleString = [currentItem valueForProperty:MPMediaItemPropertyTitle];
    NSString *artistString = [currentItem valueForProperty:MPMediaItemPropertyArtist];
    NSString *albumString = [currentItem valueForProperty:MPMediaItemPropertyAlbumTitle];
    
    [dictCat1 setObject:titleString forKey:@"Title"];
    [dictCat1 setObject:artistString forKey:@"Artist"];
    [dictCat1 setObject:albumString forKey:@"Album"];


    
}

- (IBAction)ActionButtonRU:(id)sender
{
    MPMediaItem *currentItem = [musicPlayer nowPlayingItem];
    
    NSString *titleString = [currentItem valueForProperty:MPMediaItemPropertyTitle];
    NSString *artistString = [currentItem valueForProperty:MPMediaItemPropertyArtist];
    NSString *albumString = [currentItem valueForProperty:MPMediaItemPropertyAlbumTitle];
    
    [dictCat2 setObject:titleString forKey:@"Title"];
    [dictCat2 setObject:artistString forKey:@"Artist"];
    [dictCat2 setObject:albumString forKey:@"Album"];

}

- (IBAction)ActionButtonLD:(id)sender
{
    MPMediaItem *currentItem = [musicPlayer nowPlayingItem];
    
    NSString *titleString = [currentItem valueForProperty:MPMediaItemPropertyTitle];
    NSString *artistString = [currentItem valueForProperty:MPMediaItemPropertyArtist];
    NSString *albumString = [currentItem valueForProperty:MPMediaItemPropertyAlbumTitle];
    
    [dictCat3 setObject:titleString forKey:@"Title"];
    [dictCat3 setObject:artistString forKey:@"Artist"];
    [dictCat3 setObject:albumString forKey:@"Album"];

}

- (IBAction)ActionButtonRD:(id)sender
{
    MPMediaItem *currentItem = [musicPlayer nowPlayingItem];
    
    NSString *titleString = [currentItem valueForProperty:MPMediaItemPropertyTitle];
    NSString *artistString = [currentItem valueForProperty:MPMediaItemPropertyArtist];
    NSString *albumString = [currentItem valueForProperty:MPMediaItemPropertyAlbumTitle];
    
    [dictCat4 setObject:titleString forKey:@"Title"];
    [dictCat4 setObject:artistString forKey:@"Artist"];
    [dictCat4 setObject:albumString forKey:@"Album"];

}

@end
