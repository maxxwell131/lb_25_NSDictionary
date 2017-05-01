//
//  Film.m
//  lb_25_NSDictionary
//
//  Created by admin on 5/1/17.
//  Copyright © 2017 admin. All rights reserved.
//

#import "Film.h"

@implementation Film
- (instancetype)initWithTitle:(NSString *)inputFilmTitle Genre:(NSString *)inputGenreFilm AndReleaseDate:(NSString *)inputDataReleaseFilm
{
    self = [super init];
    if (self) {
        self->titleFilm = [NSString stringWithString:inputFilmTitle];
        self->genreFilm = [NSString stringWithString:inputGenreFilm];
        
        NSDateFormatter *mmddyyyy = [[NSDateFormatter alloc] init];
        mmddyyyy.timeStyle = NSDateFormatterNoStyle;
        mmddyyyy.dateFormat = @"MM/dd/yyyy";
        
        self->dataReleaseFilm = [mmddyyyy dateFromString:inputDataReleaseFilm];
    }
    return self;
}

- (NSString *)description
{
    NSDateFormatter *formater = [[NSDateFormatter alloc] init];
    formater.dateFormat = @"MM/dd/yyyyy";
    formater.timeStyle = NSDateFormatterNoStyle;
    
    return [NSString stringWithFormat:@"titleFilm:%@\ngenreFilm:%@\ndataReleaseFilm:%@\n", self->titleFilm, self->genreFilm, [formater stringFromDate:self->dataReleaseFilm]];
}
@end
