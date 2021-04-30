//
//  DSBisnessman.m
//  10. NotificationsHomeWorkStudent
//
//  Created by Dmytro Sayko on 26.04.2021.
//

#import "DSBisnessman.h"
#import "DSGovernment.h"


@implementation DSBisnessman

#pragma mark  - Methods Init and AddObserver

- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = @"Biznesman";
        
        NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
        
        [nc addObserver:self
               selector:@selector(averagePriceDidChangeNotification:)
                   name:GovernmentAveragePriceDidChangeNotification
                 object:nil];
        
        [nc addObserver:self
               selector:@selector(taxLevelDidChangeNotification:)
                   name:GovernmentTaxLevelDidChangeNotification
                 object:nil];
        
    }
    return self;
}


#pragma mark  - Privare Method for Notification


- (void) willResignActiveNotification{
    
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



- (void) taxLevelDidChangeNotification:(NSNotification*)notification {
    
    NSNumber *value = [notification.userInfo objectForKey:GovernmentTaxLevelSalaryUserInfoKey];
    
    float newTaxLevel = [value floatValue];
    
    NSLog(@"The %@ has old TaxLevel = %1.2f", self.name, self.taxLevel);
    
    if (newTaxLevel > self.taxLevel) {
        
        NSLog(@"And the newTaxLevel = %1.2f ,  %@ are not happy", newTaxLevel, self.name);
        NSLog(@"");
        
    } else {
        
        NSLog(@"And the newTaxLevel = %1.2f ,  %@ say its very good!", newTaxLevel, self.name);
        NSLog(@"");
    }
        
    self.taxLevel = newTaxLevel;
}





- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
