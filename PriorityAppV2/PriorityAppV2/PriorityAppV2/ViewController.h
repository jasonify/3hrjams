//
//  ViewController.h
//  PriorityAppV2
//
//  Created by jason on 10/4/16.
//  Copyright © 2016 jasonify. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSMutableArray * items;

@end

