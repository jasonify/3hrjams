//
//  ViewController.m
//  SimpleApp
//
//  Created by jason on 10/1/16.
//  Copyright © 2016 jasonify. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"Starting..");
    NSLog(@"Starting..");
    NSLog(@"Starting..");
    NSLog(@"Starting..");
    NSLog(@"Starting..");
    NSLog(@"Starting..");

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [[event allTouches] anyObject];
    
    CGPoint location = [touch locationInView:self.view];
    
    /*if (location.x >= img.x && location.x <= img.x && location.y >= img.y && location.y <= img.y) {
        // your code here...
    }*/
    
    /*
    CGRect frame = self.frame;
    frame.origin.x = location.x;
    self.lillabel.frame = frame;
    
     */
    self.lillabel.center = CGPointMake(location.x, location.y);
    //self.lillabel.frame.origin.y = location.y;
    
    NSLog(@"x: %f", location.x);
    NSLog(@"x: %f", location.y);

}


- (IBAction)tapSayHi:(id)sender {
    
    NSLog(@"Hello");
}

@end
