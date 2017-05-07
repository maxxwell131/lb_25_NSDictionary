//  Film.h
//  lb_25_NSDictionary
//  Created by admin on 5/1/17.
//  Copyright © 2017 admin. All rights reserved.

#import <Foundation/Foundation.h>

@interface Film : NSObject <NSCopying> {
    NSString *titleFilm;
    NSString *genreFilm;
    NSDate *dataReleaseFilm;
}
-(instancetype)initWithTitle:(NSString*)inputFilmTitle Genre:(NSString*)inputGenreFilm AndReleaseDate:(NSString*)inputDataReleaseFilm;

-(NSString *)description;

@end
