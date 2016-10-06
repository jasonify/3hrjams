//
//  AddEntry.h
//  PriorityAppV2
//
//  Created by jason on 10/4/16.
//  Copyright © 2016 jasonify. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddEntry : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *priorityTextField;

@property (strong, nonatomic) NSMutableArray * items;


@end
