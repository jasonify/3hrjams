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

    self.items = [[NSMutableArray alloc] init];
    
    [self.items addObject: @"cool"];
    [self.items addObject: @"two"];
    [self.items addObject: @"two"];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)add:(id)sender {
    [self.items addObject: [self.entryField text]];
    self.countLabel.text = [NSString stringWithFormat: @"%d", self.items.count];

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
