//  main.m
//  lb_25_NSDictionary
//  Created by admin on 5/1/17.
//  Copyright © 2017 admin. All rights reserved.

#import <Foundation/Foundation.h>
#import "Film.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
        NSArray *keys = [NSArray arrayWithObjects:
                         [[Film alloc] initWithTitle:@"Хоббит" Genre:@"Фэнтези" AndReleaseDate:@"12/21/1995"],
                         [[Film alloc] initWithTitle:@"Интерстеллар" Genre:@"Фантастика" AndReleaseDate:@"4/23/2015"],
                         [[Film alloc]initWithTitle:@"Марсианин" Genre:@"Фантастика" AndReleaseDate:@"6/12/2015"],
                         [[Film alloc]initWithTitle:@"Интерстеллар" Genre:@"Фантастика" AndReleaseDate:@"11/28/2015"],
                         nil];
         */
        
        /*
        NSLog(@"\n---------Array key`s-------------");
        for (NSObject *tmp in keys) {
            NSLog(@"\n--%@", tmp);
        }
        NSLog(@"\n---------Array key`s-------------");
         */
        
        /*
        NSArray *values = [NSArray arrayWithObjects:
                           @"Фильм о хобите и его приключениях",
                           @"Научная фантастика от режисера К.Нолана",
                           @"Фильм снят по одноименной книге писателя Энди Вейра",
                           @"Научная фантастика от режисера К.Нолана",
                           nil];
        
        NSDictionary *dictonary = [NSDictionary dictionaryWithObjects:values forKeys:keys];
        */
        
        /*
        NSEnumerator *enumKey = [dictonary keyEnumerator];
        NSObject *obj;
        while (obj = [enumKey nextObject]) {
            NSLog(@"%@", obj);
        }
        */
       
        /*
        [dictonary enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            NSLog(@"\nkey - %@ \nvalue - %@", key, obj);
        }];
        
        NSLog(@"--------------NSEnumerator-------------");
        NSEnumerator *enumKey = [dictonary keyEnumerator];
        NSObject *obj;
        while (obj = [enumKey nextObject]) {
            NSLog(@"obj %@ value = %@", obj, [dictonary objectForKey:obj]);
        }
        NSLog(@"--------------NSEnumerator-------------");

        NSEnumerator *enumValue = [dictonary objectEnumerator];
        NSObject *value;
        while (value = [enumValue nextObject]) {
            NSLog(@"value = %@", value);
        }
        */
        
        NSDictionary *months = [NSDictionary dictionaryWithObjectsAndKeys:
                                @31, @"January",
                                @28, @"February",
                                @31, @"March",
                                @30, @"April",
                                @31, @"May",
                                @30, @"June",
                                @31, @"Jule",
                                @31, @"August",
                                @30, @"September",
                                @31, @"October",
                                @30, @"November",
                                @31, @"December",
                                nil];
        
        NSEnumerator *keyEnum = [months keyEnumerator];
        NSObject     *obj;
        
        while (obj = [keyEnum nextObject]){
            NSObject *val = [months objectForKey:obj];
            NSLog(@"key = %@, value = %@", obj, val);
        }
        
        
        for (NSObject *key in months){
            NSObject *val = [months objectForKey:key];
            NSLog(@"key = %@, value = %@", key, val);
        }
        

         NSEnumerator *valueEnum = [months objectEnumerator];
         NSObject *val;
         
         while (val = [valueEnum nextObject]){
         NSLog(@"%@", val);
         }
        
        NSArray *sortedKey = [months keysSortedByValueUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
            if (obj1 > obj2) {
                return NSOrderedDescending;
            }
            if (obj1 < obj2) {
                return NSOrderedAscending;
            } else {
                return NSOrderedSame;
            }
        }];
        
        for (NSObject *obj in sortedKey) {
            NSLog(@"key = %@ value = %@", obj, [months objectForKey:obj]);
        }
        /*
         NSDictionary *month = [NSDictionary dictionaryWithObjectsAndKeys:
         @31, @"January",
         @28, @"February",
         @31, @"March",
         @30, @"April",
         @31, @"May",
         @30, @"June",
         @31, @"Jule",
         @31, @"August",
         @30, @"September",
         @31, @"October",
         @30, @"November",
         @30, @"November",
         @31, @"December",
         nil];
         
         
         
         NSArray *allKeys = [month allKeys];
         for (int i=0; i<allKeys.count; i++){
         NSLog(@"%@",[allKeys objectAtIndex:i]);
         }
         
         NSString *key = @"September";
         NSString *value = [month objectForKey: key];
         
         if (value != nil){
         NSLog(@"%@", value);
         }else{
         NSLog(@"Ключ не найден");
         }
         */
            }
    
    return 0;
}
/*

   1. класс Money создать NSMutableDictionary, колекция -расходы, ключ-название расхода , значение-сумма сколько заплатили, в приложении меню: показать все расходы, показать все расходы в порядке возрастания, добавить новый расход, удалить поключу,посчитать сумму всех расходов. При добавлении одинакового расхода, просуммировать сумму расхода
    2. класс Студет - реализовать протокол NSCoping
*/
