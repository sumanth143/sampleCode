//
//  ViewController.m
//  coredata2
//
//  Created by student on 8/19/17.
//  Copyright © 2017 vinod. All rights reserved.
//

#import "ViewController.h"
#import "TableDataViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.ad=[[UIApplication sharedApplication]delegate];
    self.BRNEntity=[NSEntityDescription entityForName:@"StudentDetails" inManagedObjectContext:self.ad.managedObjectContext];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)fetch:(id)sender {
    NSFetchRequest *fetchRequest=[[NSFetchRequest alloc]initWithEntityName:@"StudentDetails"];
    self.student=[self.ad.managedObjectContext executeFetchRequest:fetchRequest error:nil];
    for (short int i=0; i<self.student.count; i++)
    {
        NSManagedObject * fetchObj = [self.student objectAtIndex:i];
        
        NSLog(@"firstName is %@ and lastName is %@", [fetchObj valueForKey:@"name"], [fetchObj valueForKey:@"age"]);
    }

}

- (IBAction)Save:(id)sender {
    NSManagedObject *newAttribute=[NSEntityDescription insertNewObjectForEntityForName:@"StudentDetails" inManagedObjectContext:self.ad.managedObjectContext];
    [newAttribute setValue:self.name.text forKey:@"name"];
    [newAttribute setValue:self.age.text forKey:@"age"];
    NSError *error=nil;
    //save the object to the persistance store
    if (![self.ad.managedObjectContext save:&error])
    {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
    [self performSegueWithIdentifier:@"segue" sender:nil];
    

}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    TableDataViewController * VC=[segue destinationViewController];
    
    
    VC.dataStr2=self.name.text;
    VC.dataStr2=self.age.text;
    
    
    
    
}

@end
