//
//  ProductDetailTableViewController.m
//  AppleProducts
//
//  Created by Bogdan Lviv on 8/22/19.
//  Copyright © 2019 Bogdan Lviv. All rights reserved.
//

#import "ProductDetailTableViewController.h"
#import "../Model/Product.h"
#import "../Model/ProductLine.h"

@interface ProductDetailTableViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *productImageView;
@property (weak, nonatomic) IBOutlet UITextField *productTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *productDescriptionTextView;

@end

@implementation ProductDetailTableViewController

- (Product *)product{
    if(!_product){
        _product = [[[[ProductLine getProductLines] firstObject] products] firstObject];
    }
    return _product;
}

- (void)viewDidLoad{
    [super viewDidLoad];
    self.title = @"Edit Product";
    
    self.productImageView.image = self.product.image;
    self.productTitleTextField.text=self.product.title;
    self.productTitleTextField.delegate=self;
    self.productDescriptionTextView.text=self.product.descriptionProduct;
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 0 && indexPath.row == 0){
        return indexPath;
    }
    else{
        return nil;
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder]; //dismiss keyboard
    return true;
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.productDescriptionTextView resignFirstResponder];
    [self.productTitleTextField resignFirstResponder];
}

@end
