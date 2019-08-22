//
//  ProductTableViewController.m
//  AppleProducts
//
//  Created by Bogdan Lviv on 8/20/19.
//  Copyright © 2019 Bogdan Lviv. All rights reserved.
//
// 1 - Design the new cell in Storyboard
// 2 - Create a subclass of UITableViewCell for new cell
// 3 - Update cell with UITableViewDataSource

// * Delete Rows
// 1 Edit button on the right
// 2 Delete a row (in our data model && in our tableView - UI)
// 3 Nice animation - move table view rows up

// --

// * Move rows around table view
// 1. tell the table view that you want to be able to move rows around
// 2. update the data model && update the table view UI

#import "ProductTableViewController.h"
#import "../Model/Product.h"
#import "../Model/ProductLine.h"
#import "../Views/ProductTableViewCell.h"
#import "ProductDetailTableViewController.h"

@interface ProductTableViewController ()
@property (nonatomic, strong) NSArray* productLines;
@property (nonatomic, strong) Product* selectedProduct;
@end

@implementation ProductTableViewController


- (NSArray *)productLines{
    if(!_productLines){
        //_products=[[[ProductLine getProductLines] firstObject] products];
        //_products=[[[ProductLine getProductLines] objectAtIndex:1] products];
        _productLines = [ProductLine getProductLines];
    }
    return _productLines;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
   /* self.tableView.dataSource = self;
    self.tableView.delegate = self;
    */
    self.title=@"Apple Store";
    
    //if i comment this two line nothing changes
    self.tableView.estimatedRowHeight=self.tableView.rowHeight;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - UITableViewDatasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.productLines.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[self.productLines[section] products] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ProductCell" forIndexPath:indexPath];
    
    //Product *product = [self.products objectAtIndex:indexPath.row];
    ProductLine *productLine = self.productLines[indexPath.section];
    NSArray *products = productLine.products;
    Product *product = products[indexPath.row];
    
    if([cell isKindOfClass:[ProductTableViewCell class]]){
        [(ProductTableViewCell *) cell setProduct:product];
    }
    
    //cell.textLabel.text = product.title;
    
    return  cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    ProductLine *productLine = self.productLines[section];
    return productLine.name;
}

// Delete rows

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if(UITableViewCellEditingStyleDelete == editingStyle){
        // 1 - delete the product from the productLine's products array
        ProductLine *productLine = self.productLines[indexPath.section];
        [productLine.products removeObjectAtIndex:indexPath.row];
        
        // 2 - update the table view with new data
        //[tableView reloadData];//bad way
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
        
    }
}

//moving cells around

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath{
    return true;
}

- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath{
    
    NSMutableArray *productsAtSourceSection = [self.productLines[sourceIndexPath.section] products];
    
    Product *productToMove = productsAtSourceSection[sourceIndexPath.row];
    
    //move the product to destination products array
    NSMutableArray *productsAtDestinationSection=[self.productLines[destinationIndexPath.section] products];
    [productsAtDestinationSection insertObject:productToMove atIndex:destinationIndexPath.row];
    
    //delete the product to move from the source product array
    [[self.productLines[sourceIndexPath.section] products] removeObjectAtIndex:sourceIndexPath.row];
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    ProductLine *productLine = self.productLines[indexPath.section];
    Product *product = productLine.products[indexPath.row];
    self.selectedProduct = product;
    [self performSegueWithIdentifier:@"ShowProductDetail" sender:nil];
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"ShowProductDetail"]){
        ProductDetailTableViewController *productDetailTVC = segue.destinationViewController;
        productDetailTVC.product = self.selectedProduct;
    }
}

@end
