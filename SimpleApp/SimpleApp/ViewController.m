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

    [NSTimer scheduledTimerWithTimeInterval:0.3f target:self selector:@selector(someMethod) userInfo:nil repeats:YES];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) someMethod{
    // NSLog(@"changing bg");
    self.view.backgroundColor = [UIColor blueColor];
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
            self.selectedView = view;
            // http://stackoverflow.com/questions/4631878/how-to-set-iphone-ui-view-z-index
            /// import quartz and do theView.layer.zPosition = 1;
            
            [self.view bringSubviewToFront:view];
            
        }
        
    }
    

    if(self.selectedView == nil){
        [UIView animateWithDuration:0.5f animations:^{
            self.hiButton.frame = CGRectOffset(self.hiButton.frame, 0, 250);
        }];
    }
    
    NSLog(@"x: %f", location.x);
    NSLog(@"x: %f", location.y);

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
    }
    
    self.selectedView = nil;

}








- (IBAction)tapSayHi:(id)sender {
    
    NSLog(@"Hello");
    
    
}

@end
