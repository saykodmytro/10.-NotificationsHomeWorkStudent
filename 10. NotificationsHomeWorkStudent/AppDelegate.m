//
//  AppDelegate.m
//  10. NotificationsHomeWorkStudent
//
//  Created by Dmytro Sayko on 25.04.2021.
//

#import "AppDelegate.h"
#import "DSGovernment.h"
#import "DSDoctor.h"
#import "DSBisnessman.h"
#import "DSPensioneer.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    DSGovernment *government = [[DSGovernment alloc] init];
    DSDoctor *doctor = [[DSDoctor alloc] init];
    DSBisnessman *biznesman = [[DSBisnessman alloc] init];
    DSPensioneer *pensioner = [[DSPensioneer alloc] init];
    
    doctor.averagePrice = biznesman.averagePrice = pensioner.averagePrice = government.averagePrice;
    pensioner.pension = government.pension;
    doctor.salary = government.salary;
    biznesman.taxLevel = government.taxLevel;
    
    
    NSLog(@"**** Government Up ****");
    NSLog(@"");
    government.averagePrice = 11;
    government.pension = 600;
    government.salary = 1100;
    government.taxLevel = 6;
    NSLog(@"");
    
    NSLog(@"**** Government Down ****");
    NSLog(@"");
    government.averagePrice = 9;
    government.pension = 400;
    government.salary = 900;
    government.taxLevel = 4;
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
