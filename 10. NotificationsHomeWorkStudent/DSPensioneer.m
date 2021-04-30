//
//  DSPensioneer.m
//  10. NotificationsHomeWorkStudent
//
//  Created by Dmytro Sayko on 26.04.2021.
//

#import "DSPensioneer.h"
#import "DSGovernment.h"

@implementation DSPensioneer

#pragma mark  - Methods Init and AddObserver

- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = @"Pensioner";
        
        NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
        
        [nc addObserver:self
               selector:@selector(pensionDidChangeNotification:)
                   name:GovernmentPensionDidChangeNotification
                 object:nil];
        
        [nc addObserver:self
               selector:@selector(averagePriceDidChangeNotification:)
                   name:GovernmentAveragePriceDidChangeNotification
                 object:nil];
        
    }
    return self;
}


#pragma mark  - Privare Method for Notification


- (void) pensionDidChangeNotification:(NSNotification*)notification {
    
    NSNumber *value = [notification.userInfo objectForKey:GovernmentPensionSalaryUserInfoKey];
    
    float newPension = [value floatValue];
    
    NSLog(@"The %@ has old pension = %1.2f", self.name, self.pension);
    
    if (newPension > self.pension) {
        
        NSLog(@"And the newPension = %1.2f ,  %@ say its very good!", newPension, self.name);
        NSLog(@"");
        
    } else {
        
        NSLog(@"And the newPension = %1.2f ,  %@ are not happy", newPension, self.name);
        NSLog(@"");
    }
    
    self.pension = newPension;
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
