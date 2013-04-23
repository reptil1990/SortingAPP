//
//  ResultViewController.h
//  MusicSortingAPP
//
//  Created by Carsten Graf on 09.04.13.
//  Copyright (c) 2013 Carsten Graf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TaggViewController.h"

@interface ResultViewController : UITableViewController <UITableViewDelegate,UITableViewDataSource>
{
}
@property (nonatomic,retain) NSMutableArray *ResultCat1;
@property (nonatomic,retain) NSMutableArray *ResultCat2;
@property (nonatomic,retain) NSMutableArray *ResultCat3;
@property (nonatomic,retain) NSMutableArray *ResultCat4;

@property (nonatomic,retain) NSString *NameCat1;
@property (nonatomic,retain) NSString *NameCat2;
@property (nonatomic,retain) NSString *NameCat3;
@property (nonatomic,retain) NSString *NameCat4;


@end
