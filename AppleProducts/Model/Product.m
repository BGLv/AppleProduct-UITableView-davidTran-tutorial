//
//  Product.m
//  AppleProducts
//
//  Created by Bogdan Lviv on 8/20/19.
//  Copyright © 2019 Bogdan Lviv. All rights reserved.
//
//Product
//ProductLine will contain [Product]

#import "Product.h"

@implementation Product

-(id)initWithTitle: (NSString *)title withDescription:(NSString *)description
          andImgName:(NSString *)imageName {
    self = [super init];
    if(self){
        self.title = title;
        self.descriptionProduct = description;
        self.image = [UIImage imageNamed:imageName];
        if(!self.image){
            self.image = [UIImage imageNamed:@"default"];
        }
        self.rating = unrated;
    }
    return self;
}

@end
