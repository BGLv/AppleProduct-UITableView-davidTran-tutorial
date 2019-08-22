//
//  ProductDetailTableViewController.h
//  AppleProducts
//
//  Created by Bogdan Lviv on 8/22/19.
//  Copyright © 2019 Bogdan Lviv. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Product;

NS_ASSUME_NONNULL_BEGIN

@interface ProductDetailTableViewController : UITableViewController <UITextFieldDelegate>

@property (nonatomic, strong) Product *product;

@end

NS_ASSUME_NONNULL_END
