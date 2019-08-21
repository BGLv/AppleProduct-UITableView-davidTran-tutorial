//
//  ProductLine.h
//  AppleProducts
//
//  Created by Bogdan Lviv on 8/20/19.
//  Copyright © 2019 Bogdan Lviv. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface ProductLine : NSObject

@property (nonatomic,strong) NSString *name;
@property (nonatomic, strong) NSMutableArray *products; //of Product

-(id) initWithName: (NSString *)named andProducts: (NSMutableArray*)products;
+ (NSArray *) getProductLines;
@end

NS_ASSUME_NONNULL_END
