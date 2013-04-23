//
//  ResultViewController.m
//  MusicSortingAPP
//
//  Created by Carsten Graf on 09.04.13.
//  Copyright (c) 2013 Carsten Graf. All rights reserved.
//

#import "ResultViewController.h"
#import "TaggViewController.h"
#import "OptionsViewController.h"

@class TaggViewController;

@interface ResultViewController ()

@end

@implementation ResultViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    
    NSLog(@"Result: %@",_ResultCat1);
    
	UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithTitle:@"Save"
																   style:UIBarButtonItemStyleDone
																  target:self
																  action:@selector(SaveAll)];
	self.navigationItem.rightBarButtonItem = addButton;
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
        
    switch (section) {
        case 0: return [_ResultCat1 count];
            break;
        case 1: return [_ResultCat2 count];
            break;
        case 2:  return [_ResultCat3 count];
            break;
        case 3: return [_ResultCat4 count];
            break;
        default: return 1;
            break;
    }

}


-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch (section) {
        case 0: return _NameCat1;
            break;
        case 1: return _NameCat2;
            break;
        case 2:  return _NameCat3;
            break;
        case 3: return _NameCat4;
            break;
        default: return nil;
            break;
    }

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    
    switch (indexPath.section) {
        case 0:  cell.textLabel.text = [[_ResultCat1 objectAtIndex:indexPath.row] objectForKey:@"Artist"];
                cell.detailTextLabel.text = [[_ResultCat1 objectAtIndex:indexPath.row] objectForKey:@"Title"];
            break;
        case 1:  cell.textLabel.text = [[_ResultCat2 objectAtIndex:indexPath.row] objectForKey:@"Artist"];
            cell.detailTextLabel.text = [[_ResultCat2 objectAtIndex:indexPath.row] objectForKey:@"Title"];
            break;
        case 2:  cell.textLabel.text = [[_ResultCat3 objectAtIndex:indexPath.row] objectForKey:@"Artist"];
            cell.detailTextLabel.text = [[_ResultCat3 objectAtIndex:indexPath.row] objectForKey:@"Title"];
            break;
        case 3:  cell.textLabel.text = [[_ResultCat4 objectAtIndex:indexPath.row] objectForKey:@"Artist"];
            cell.detailTextLabel.text = [[_ResultCat4 objectAtIndex:indexPath.row] objectForKey:@"Title"];
            break;
        default: 
            break;
    }

    
    
    return cell;
}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        switch (indexPath.section) {
            case 0:
                [_ResultCat1 removeObjectAtIndex:indexPath.row];
                break;
            case 1:
                [_ResultCat2 removeObjectAtIndex:indexPath.row];
                break;
            case 2:
                [_ResultCat3 removeObjectAtIndex:indexPath.row];
                break;
            case 3:
                [_ResultCat4 removeObjectAtIndex:indexPath.row];
                break;
            default:
                break;
        }
        
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade]; 
}
}

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/
/*

// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
    
    
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     
}
*/

-(void)SaveAll{


    NSLog(@"Saved");
}



@end
