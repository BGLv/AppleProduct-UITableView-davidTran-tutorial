//
//  ProductTableViewCell.m
//  AppleProducts
//
//  Created by Bogdan Lviv on 8/21/19.
//  Copyright © 2019 Bogdan Lviv. All rights reserved.
//

#import "ProductTableViewCell.h"
#import "../Model/Product.h"

@interface ProductTableViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *productImageView;
@property (weak, nonatomic) IBOutlet UILabel *productTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *productDescriptionLabel;

@end

@implementation ProductTableViewCell

- (void)setProduct:(Product *)product{
    _product=product;
    [self updateUI];
}

-(void)updateUI{
    self.productImageView.image = [self.product image];
    self.productTitleLabel.text = [self.product title];
    self.productDescriptionLabel.text = [self.product descriptionProduct];
}

@end
