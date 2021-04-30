//
//  DSPensioneer.h
//  10. NotificationsHomeWorkStudent
//
//  Created by Dmytro Sayko on 26.04.2021.
//

#import <Foundation/Foundation.h>
#import "DSGovernment.h"

NS_ASSUME_NONNULL_BEGIN

@interface DSPensioneer : NSObject

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) float pension;
@property (assign, nonatomic) float averagePrice;

@end

NS_ASSUME_NONNULL_END
