//
//  AppDelegate.h
//  coredata2
//
//  Created by student on 8/19/17.
//  Copyright © 2017 vinod. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;
@property NSManagedObjectContext *managedObjectContext;
@property NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property NSManagedObjectModel *managedObjectModel;

- (void)saveContext;


@end

