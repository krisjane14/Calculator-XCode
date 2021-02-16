//
//  Calculator_Brain.h
//  Calculator
//
//  Created by Kristina Villanueva on 2021-02-03.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator_Brain : NSObject

-(void)pushItem:(double) number;
-(double)calculate: (NSString *) oparation;

@end

NS_ASSUME_NONNULL_END
