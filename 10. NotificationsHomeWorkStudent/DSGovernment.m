//
//  DSGovernment.m
//  10. NotificationsHomeWorkStudent
//
//  Created by Dmytro Sayko on 26.04.2021.
//

#import "DSGovernment.h"

NSString * _Nullable const GovernmentSalaryDidChangeNotification = @"GovernmentSalaryDidChangeNotification";
NSString * _Nullable const GovernmentAveragePriceDidChangeNotification = @"GovernmentAveragePriceDidChangeNotification";
NSString * _Nullable const GovernmentTaxLevelDidChangeNotification = @"GovernmentTaxLevelDidChangeNotification";
NSString * _Nullable const GovernmentPensionDidChangeNotification = @"GovernmentPensionDidChangeNotification";


NSString * _Nullable const GovernmentSalaryUserInfoKey = @"GovernmentSalaryUserInfoKey";
NSString * _Nullable const GovernmentAveragePriceSalaryUserInfoKey = @"GovernmentAveragePriceSalaryUserInfoKey";
NSString * _Nullable const GovernmentTaxLevelSalaryUserInfoKey = @"GovernmentTaxLevelSalaryUserInfoKey";
NSString * _Nullable const GovernmentPensionSalaryUserInfoKey = @"GovernmentPensionSalaryUserInfoKey";

@implementation DSGovernment

- (instancetype)init
{
    self = [super init];
    if (self) {
        _salary = 1000;
        _averagePrice = 10;
        _taxLevel = 5;
        _pension = 500;
        
        
    }
    return self;
}


- (void) setSalary:(float)salary {
    
    _salary = salary;
    
    NSNumber *number = [NSNumber numberWithFloat:salary];
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:number forKey:GovernmentSalaryUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:GovernmentSalaryDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
    
}


- (void) setAveragePrice:(float)averagePrice {
    
    _averagePrice = averagePrice;
    
    NSNumber *number = [NSNumber numberWithFloat:averagePrice];
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:number forKey:GovernmentAveragePriceSalaryUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:GovernmentAveragePriceDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}


- (void) setTaxLevel:(float)taxLevel {
    
    _taxLevel = taxLevel;
    
    NSNumber *number = [NSNumber numberWithFloat:taxLevel];
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:number forKey:GovernmentTaxLevelSalaryUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:GovernmentTaxLevelDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
    
}


- (void) setPension:(float)pension {
    
    _pension = pension;
    
    NSNumber *number = [NSNumber numberWithFloat:pension];
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:number forKey:GovernmentPensionSalaryUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:GovernmentPensionDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

@end
