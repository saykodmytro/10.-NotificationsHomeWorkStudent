//
//  DSDoctor.m
//  10. NotificationsHomeWorkStudent
//
//  Created by Dmytro Sayko on 26.04.2021.
//


#import "DSDoctor.h"
#import "DSGovernment.h"

@implementation DSDoctor

#pragma mark  - Methods Init and AddObserver

- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = @"Doctor";
        
        NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
        
        [nc addObserver:self
               selector:@selector(salaryDidChangeNotification:)
                   name:GovernmentSalaryDidChangeNotification
                 object:nil];
        
        [nc addObserver:self
               selector:@selector(averagePriceDidChangeNotification:)
                   name:GovernmentAveragePriceDidChangeNotification
                 object:nil];
        
    }
    return self;
}


#pragma mark  - Privare Method for Notification


- (void) salaryDidChangeNotification:(NSNotification*)notification {
    
    NSNumber *value = [notification.userInfo objectForKey:GovernmentSalaryUserInfoKey];
    
    float newSalary = [value floatValue];
    
    NSLog(@"The %@ has old Salary = %1.2f", self.name, self.salary);

    if (newSalary > self.salary) {
        
        NSLog(@"And the newSalary = %1.2f ,  %@ say its very good!", newSalary, self.name);
        NSLog(@"");
        
    } else {
        
        NSLog(@"And the newSalary = %1.2f ,  %@ are not happy", newSalary, self.name);
        NSLog(@"");
        
    }
    
    self.salary = newSalary;
}


- (void) averagePriceDidChangeNotification:(NSNotification*)notification {
    
    NSNumber *value = [notification.userInfo objectForKey:GovernmentAveragePriceSalaryUserInfoKey];
    
    float newAveragePrice = [value floatValue];
    
    NSLog(@"The %@ has old averagePrice = %1.2f", self.name, self.averagePrice);
    
    if (newAveragePrice > self.averagePrice) {
        
        NSLog(@"And the newAveragePrice = %1.2f ,  %@ are not happy", newAveragePrice, self.name);
        NSLog(@"");
        
    } else {
        
        NSLog(@"And the newAveragePrice = %1.2f ,  %@ say its very good!", newAveragePrice, self.name);
        NSLog(@"");
    }
    
    self.averagePrice = newAveragePrice;
}



#pragma mark  - RemoveObserver

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
