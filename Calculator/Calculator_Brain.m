//
//  Calculator_Brain.m
//  Calculator
//
//  Created by Kristina Villanueva on 2021-02-03.
//

#import "Calculator_Brain.h"

@interface Calculator_Brain()
//private property declaration
@property (nonatomic)NSMutableArray *privateItems;
-(double)popItem;
@end


@implementation Calculator_Brain

//Function that add items to the NSMutableArray
-(void)pushItem:(double) number{
    [self.privateItems addObject:[[NSNumber alloc]initWithDouble:number]];
}

//Function that get the operator and calculate the numbers you enter
-(double)calculate:(NSString *) oparation{
    double result = 0;
    
    if ([oparation isEqualToString:@"+"]){
        //popItems
        result = [self popItem] + [self popItem];
    }
    else if ([oparation isEqualToString:@"-"]){
        //popItems
        double firstNum = [self popItem];
        double secondNum = [self popItem];
        result = secondNum - firstNum;
    }
    else if ([oparation isEqualToString:@"*"]){
        //popItems
        result = [self popItem] * [self popItem];
    }
    else if ([oparation isEqualToString:@"/"]){
        //popItems
        result = [self popItem] / [self popItem];
    }

    return result;
}

//Function that removed the last object/number inn the NSMutableArray entered by the user
-(double)popItem{
    NSNumber *lastNumberObject = [self.privateItems lastObject];
    [self.privateItems removeLastObject];
          
    return lastNumberObject.doubleValue;
}

//Lazy Instantiation
-(NSMutableArray *)privateItems{
    if(_privateItems == NULL) {
        _privateItems = [[NSMutableArray alloc]init];
    }
    return _privateItems;
}


@end
