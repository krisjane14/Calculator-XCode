//
//  main.m
//  Calculator
//
//  Created by Kristina Villanueva on 2021-02-03.
//

#import <Foundation/Foundation.h>
#import "Calculator_Brain.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Calculator_Brain *testing = [[Calculator_Brain alloc]init];
        [testing pushItem:5];
        [testing pushItem:45];
                   
        
        NSLog(@"%f", [testing calculate:@"/"]);
    }
    return 0;
}
