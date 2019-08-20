//
//  Product.h
//  AppleProducts
//
//  Created by Bogdan Lviv on 8/20/19.
//  Copyright © 2019 Bogdan Lviv. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"
NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger,ProductRating){
    unrated,
    average,
    ok,
    good,
    brilliant
};

@interface Product : NSObject

@property (nonatomic, strong) UIImage *image;
@property (nonatomic,strong) NSString *title;
@property (nonatomic,strong) NSString *descriptionProduct;
@property (nonatomic) ProductRating rating;

@end

NS_ASSUME_NONNULL_END
