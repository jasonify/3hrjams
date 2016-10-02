//
//  AddToArray.h
//  Priority
//
//  Created by jason on 10/2/16.
//  Copyright © 2016 jasonify. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddToArray : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lastLabel;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UITextField *entryField;
@property (strong, nonatomic) NSMutableArray  * items;


@end
