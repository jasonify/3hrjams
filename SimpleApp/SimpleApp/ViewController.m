//
//  ViewController.m
//  SimpleApp
//
//  Created by jason on 10/1/16.
//  Copyright © 2016 jasonify. All rights reserved.
//

#import "ViewController.h"
#include <stdlib.h>


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

    [NSTimer scheduledTimerWithTimeInterval:1.5f target:self selector:@selector(someMethod) userInfo:nil repeats:YES];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) someMethod{
    // NSLog(@"changing bg");
   // self.view.backgroundColor = [UIColor blueColor];
    
    // Random number between 01
    // int r = arc4random_uniform(74)
    // NSLog(@"%i", r);
    
    for(UILabel *view in self.view.subviews){
        if([view isKindOfClass:[UILabel class]]){
            
        
        int r = arc4random_uniform(100);
        if(r > 50){
            view.text = @"GOOD";
        } else{
            //view.text = @"Evil";
           // view.text = [NSString stringWithFormat:@"EVIL: %i", r];
        }
        
    }
    }
}


- (void) touchesMoved: (NSSet * ) touches withEvent: (UIEvent *) event   {
    
    if(self.selectedView != nil){
        UITouch *touch = [[event allTouches] anyObject];

        CGPoint location = [touch locationInView:self.view];
        self.selectedView.center = CGPointMake(location.x, location.y);

    }
    
    
    
    
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint location = [touch locationInView:self.view];
    CGRect fingerRect = CGRectMake(location.x - 5, location.y - 5, 10, 10);
    
    for(UIView  *view in self.view.subviews){
        
        CGRect subviewFrame = view.frame;
        
        if(CGRectIntersectsRect(fingerRect, subviewFrame)){
            NSLog(@"Intersected with view %@", view);
            view.center = CGPointMake(location.x, location.y);
            if(self.selectedView != nil){
                NSLog(@"view.layer.zPosition %f", view.layer.zPosition);
                NSLog(@"selectedView %f", self.selectedView.layer.zPosition);
                

            } else{
                self.selectedView = view;
            }
                // http://stackoverflow.com/questions/4631878/how-to-set-iphone-ui-view-z-index
                /// import quartz and do theView.layer.zPosition = 1;
            
                
            
        }
        
    }
    
        

    if(self.selectedView == nil){
        int jumpCount = 150;
        NSLog(@"self.hiButton.center.x = %f", self.hiButton.center.x);
        NSLog(@"height = %f", self.view.frame.size.height/2);
       
        [UIView animateWithDuration:0.5f animations:^{
            //self.hiButton.frame = CGRectOffset(self.hiButton.frame, 0, jumpCount);
            self.hiButton.center = CGPointMake(self.hiButton.center.x, self.hiButton.center.y + jumpCount);

        }];
        
        if(self.hiButton.center.y + 20 > self.view.frame.size.height ){
            NSLog(@"LARGER!");
            self.hiButton.center = CGPointMake(self.hiButton.center.x, 0);
        }
    }else {
        //[self.view bringSubviewToFront:self.selectedView];
        
        self.selectedView.layer.zPosition = 1;
    }
    
    //NSLog(@"x: %f", location.x);
    //NSLog(@"x: %f", location.y);

}


- (void) touchesEnded: (NSSet *) touches withEvent: (UIEvent *) event
{
    
    if(self.selectedView != nil){
        for(UIView *view in self.view.subviews){
            if(view != self.selectedView){
                CGRect childFrame = view.frame;
                if(CGRectIntersectsRect(childFrame, self.selectedView.frame)){
                    NSLog(@"OVERLAP OVERLAP OVERLAP");
                    
                    view.backgroundColor = [UIColor redColor];

                }
            }
        }
        self.selectedView.layer.zPosition = 0;
    }
    
    self.selectedView = nil;

}








- (IBAction)tapSayHi:(id)sender {
    
    NSLog(@"Hello");
    UILabel *theLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 80.0f, 30.0f)];
    //self.cityLabel = theLabel;
    theLabel.text = @"Hello";
    theLabel.center = self.hiButton.center;
    [self.view addSubview:theLabel];
    
}

@end
