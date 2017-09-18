//
//  ViewController.h
//  coredata2
//
//  Created by student on 8/19/17.
//  Copyright © 2017 vinod. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "coredata2+CoreDataModel.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *age;
- (IBAction)fetch:(id)sender;
- (IBAction)Save:(id)sender;
@property AppDelegate *ad;
@property NSEntityDescription *BRNEntity;
@property NSArray *student;


@end

