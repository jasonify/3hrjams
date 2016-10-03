//
//  ViewController.m
//  throwaway
//
//  Created by jason on 10/2/16.
//  Copyright © 2016 jasonify. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark UITableView Data Source Methods


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 3;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString * idOfCell = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:idOfCell forIndexPath: indexPath];
    
    cell.textLabel.text = @"COOL ";
    return cell;
}




@end
