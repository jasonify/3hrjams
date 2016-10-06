//
//  AddEntry.m
//  PriorityAppV2
//
//  Created by jason on 10/4/16.
//  Copyright © 2016 jasonify. All rights reserved.
//

#import "AddEntry.h"

@interface AddEntry ()

@end

@implementation AddEntry

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initItems];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)addTapped:(id)sender {
    NSString * text  = self.priorityTextField.text;
    
    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
    
    [self.items addObject:text];
    [userDefaults setObject: self.items forKey:@"iems"];
    [userDefaults synchronize];
    
    NSLog(@"%@", text);
}


-(void) initItems {
    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
    NSArray * itemsStored = [userDefaults objectForKey:@"iems"];
    if(itemsStored == nil){
        self.items = [[NSMutableArray alloc] init];
        
    } else {
        self.items = [itemsStored mutableCopy];
    }
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
