//
//  ProductTableViewController.m
//  AppleProducts
//
//  Created by Bogdan Lviv on 8/20/19.
//  Copyright © 2019 Bogdan Lviv. All rights reserved.
//

#import "ProductTableViewController.h"
#import "Model/Product.h"
#import "Model/ProductLine.h"

@interface ProductTableViewController ()
@property (nonatomic, strong) NSArray* products;

@end

@implementation ProductTableViewController


- (NSArray *)products{
    if(!_products){
        //_products=[[[ProductLine getProductLines] firstObject] products];
        _products=[[[ProductLine getProductLines] objectAtIndex:1] products];
    }
    return _products;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#define mark - UITableViewDatasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.products count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ProductCell" forIndexPath:indexPath];
    
    Product *product = [self.products objectAtIndex:indexPath.row];
    
    cell.textLabel.text = product.title;
    
    return  cell;
}



@end
