//
//  AddToArray.m
//  Priority
//
//  Created by jason on 10/2/16.
//  Copyright © 2016 jasonify. All rights reserved.
//

#import "AddToArray.h"

@interface AddToArray ()

@end

@implementation AddToArray

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"Add To Array View");
    [self initItems];
    self.countLabel.text = [NSString stringWithFormat: @"%d", self.items.count];
    
    
    
}

- (void) initItems {
    //self.items = [NSMutableArray arrayWithArray:@[@"one", @"two"]];

    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
    NSArray * _itemsX = [userDefaults objectForKey:@"items2"];
    
    if(_itemsX == nil){
    self.items = [[NSMutableArray alloc] init];
    
    [self.items addObject: @"cool"];
    [self.items addObject: @"two"];
    [self.items addObject: @"two"];
    } else {
        self.items = [_itemsX mutableCopy] ; // autorelease working?
      //  [self.items addObject: @"lastalways"];

    }
    
    self.lastLabel.text = self.items[self.items.count -1];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)add:(id)sender {
    NSLog(@"1---");
    [self.items addObject: [self.entryField text]];
    [self.entryField setText:@""];
    self.countLabel.text = [NSString stringWithFormat: @"%d", self.items.count];
    NSLog(@"2---");

    
    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject: self.items forKey:@"items2"];
    [userDefaults synchronize];
    NSLog(@"3---");


}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
