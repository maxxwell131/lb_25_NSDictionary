//  Film.m
//  lb_25_NSDictionary
//  Created by admin on 5/1/17.
//  Copyright © 2017 admin. All rights reserved.

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

-(id)copyWithZone:(NSZone *)zone {
    //Film *tmpFilm = [[Film alloc] initWithTitle:self->titleFilm Genre:self->titleFilm AndReleaseDate:self->dataReleaseFilm];
    Film *tmpFilm = [Film new];
    tmpFilm->titleFilm = [NSString stringWithString:self->titleFilm];
    tmpFilm->genreFilm = [NSString stringWithString:self->genreFilm];
    tmpFilm->dataReleaseFilm = [[NSDate alloc] initWithTimeInterval:0 sinceDate:self->dataReleaseFilm];
    
    //NSLog(@"\ncopyWithZone - \n%@", self);
    return tmpFilm;
}

- (NSString *)description
{
    NSDateFormatter *formater = [[NSDateFormatter alloc] init];
    formater.dateFormat = @"MM/dd/yyyyy";
    formater.timeStyle = NSDateFormatterShortStyle;
    formater.dateStyle = NSDateFormatterShortStyle;
    
    return [NSString stringWithFormat:@"titleFilm:%@\ngenreFilm:%@\ndataReleaseFilm:%@\nHASH: %lu", self->titleFilm, self->genreFilm, [formater stringFromDate:self->dataReleaseFilm],self.hash];
}
@end
