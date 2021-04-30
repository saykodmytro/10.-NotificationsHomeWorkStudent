//
//  DSGovernment.h
//  10. NotificationsHomeWorkStudent
//
//  Created by Dmytro Sayko on 26.04.2021.
//

#import <Foundation/Foundation.h>

extern NSString * _Nullable const GovernmentSalaryDidChangeNotification;
extern NSString * _Nullable const GovernmentAveragePriceDidChangeNotification;
extern NSString * _Nullable const GovernmentTaxLevelDidChangeNotification;
extern NSString * _Nullable const GovernmentPensionDidChangeNotification;


extern NSString * _Nullable const GovernmentSalaryUserInfoKey;
extern NSString * _Nullable const GovernmentAveragePriceSalaryUserInfoKey;
extern NSString * _Nullable const GovernmentTaxLevelSalaryUserInfoKey;
extern NSString * _Nullable const GovernmentPensionSalaryUserInfoKey;




NS_ASSUME_NONNULL_BEGIN

@interface DSGovernment : NSObject

@property (assign, nonatomic) float taxLevel;
@property (assign, nonatomic) float salary;
@property (assign, nonatomic) float pension;
@property (assign, nonatomic) float averagePrice;


@end

NS_ASSUME_NONNULL_END
