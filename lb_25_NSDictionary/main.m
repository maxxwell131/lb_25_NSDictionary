//
//  main.m
//  lb_25_NSDictionary
//
//  Created by admin on 5/1/17.
//  Copyright © 2017 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Film.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *keys = [NSArray arrayWithObjects:
                         [[Film alloc] initWithTitle:@"Хоббит" Genre:@"Фэнтези" AndReleaseDate:@"12/21/1995"],
                         [[Film alloc] initWithTitle:@"Интерстеллар" Genre:@"Фантастика" AndReleaseDate:@"4/23/2015"],
                         [[Film alloc]initWithTitle:@"Марсианин" Genre:@"Фантастика" AndReleaseDate:@"6/12/2015"],
                         [[Film alloc]initWithTitle:@"Интерстеллар" Genre:@"Фантастика" AndReleaseDate:@"11/28/2015"],
                         nil];
        
        NSArray *values = [NSArray arrayWithObjects:
                           @"Фильм о хобите и его приключениях",
                           @"Научная фантастика от режисера К.Нолана",
                           @"Фильм снят по одноименной книге писателя Энди Вейра",
                           @"Научная фантастика от режисера К.Нолана",
                           nil];
        
        NSDictionary *dictonary = [NSDictionary dictionaryWithObjects:values forKeys:keys];
    }
    return 0;
}
