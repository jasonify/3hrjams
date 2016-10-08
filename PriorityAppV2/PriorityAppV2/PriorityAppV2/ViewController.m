//
//  ViewController.m
//  PriorityAppV2
//
//  Created by jason on 10/4/16.
//  Copyright © 2016 jasonify. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initItems];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) viewDidAppear:(BOOL)animated
{
    NSLog(@"Cool");
    [self initItems];

    [super viewWillAppear:animated];
    [self.tableView reloadData];
    
}

-(void) initItems {
    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
    NSArray * itemsStored = [userDefaults objectForKey:@"iems"];
    
    // 
    if(itemsStored == nil){
        NSLog(@"NIL!");
        self.items = [[NSMutableArray alloc] init];
        
    } else {
        
        NSLog(@"setting items :) ");
        NSLog(@"ITEMS count: %d", self.items.count);
        self.items = [itemsStored mutableCopy];
        NSLog(@"ITEMS count: %d", itemsStored.count);
    }
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.items.count;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier: @"cell" forIndexPath: indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat: @"row =%@", self.items[ self.items.count - (indexPath.row+1)] ];
    
    return cell;
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
