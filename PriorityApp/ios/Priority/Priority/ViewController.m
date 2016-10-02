//
//  ViewController.m
//  Priority
//
//  Created by jason on 10/2/16.
//  Copyright © 2016 jasonify. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
    NSString *savedValue = [[NSUserDefaults standardUserDefaults]
                            stringForKey:@"morality"];
    */
    NSString *savedValue = [[NSUserDefaults standardUserDefaults] stringForKey:@"moraility"];

    if(savedValue != nil){
        self.labelMorality.text = savedValue;
        
    }
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)goodTouched:(id)sender {
    NSLog(@"Good");
    
    NSString * valueToSave = @"Good";
    [ [NSUserDefaults standardUserDefaults]  setObject: valueToSave forKey: @"moraility"];
    
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}
- (IBAction)evilTouched:(id)sender {
    NSLog(@"Evil");
    NSString * valueToSave = @"Evil";
    [ [NSUserDefaults standardUserDefaults]  setObject: valueToSave forKey: @"moraility"];
    [[NSUserDefaults standardUserDefaults] synchronize];


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
