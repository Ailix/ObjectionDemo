//
//  TableViewController.m
//  ObjectionDemo
//
//  Created by Ailix on 15/3/12.
//  Copyright (c) 2015年 Ailix. All rights reserved.
//

#import "TableViewController.h"
#import <Objection.h>
#import "Protocols.h"

#import "AIMacro.h"


static NSString * const cellId = @"ai_cell";


@interface TableViewController ()

@property (nonatomic,copy) NSArray *dataArray;


@end

@implementation TableViewController


- (NSArray *)dataArray
{
    if (_dataArray == nil) {
        _dataArray = @[@"A1",@"A2"];
    }
    return _dataArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellId];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return self.dataArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    cell.textLabel.text = _dataArray[indexPath.row];
    
    // Configure the cell...
    
    return cell;
}


#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
        {

            JSObjectionInjector *injector = [JSObjection defaultInjector];
            
            AILog(@"%i-%i >> %@",indexPath.section,indexPath.row,injector);
            UIViewController <A1ViewControllerProtocol>*vc = [injector getObject:@protocol(A1ViewControllerProtocol)];
            vc.backgroundColor = [UIColor redColor];
            vc.a1_text = _dataArray[indexPath.row];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 1:
        {
            JSObjectionInjector *injector = [JSObjection defaultInjector];
            AILog(@"%i-%i >> %@",indexPath.section,indexPath.row,injector);
            UIViewController <A2ViewControllerProtocol>*vc = [injector getObject:@protocol(A2ViewControllerProtocol)];
            vc.a2_text = _dataArray[indexPath.row];
            vc.backgroundColor = [UIColor yellowColor];
            [self.navigationController pushViewController:vc animated:YES];

        }
            break;
            
        default:
            break;
    }
    
    
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
