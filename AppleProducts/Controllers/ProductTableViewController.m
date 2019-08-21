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

#import "ProductTableViewController.h"
#import "../Model/Product.h"
#import "../Model/ProductLine.h"
#import "../Views/ProductTableViewCell.h"

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
    
   /* self.tableView.dataSource = self;
    self.tableView.delegate = self;
    */
    self.title=@"Apple Store";
    
    //if i comment this two line nothing changes
    self.tableView.estimatedRowHeight=self.tableView.rowHeight;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
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
    
    if([cell isKindOfClass:[ProductTableViewCell class]]){
        [(ProductTableViewCell *) cell setProduct:product];
    }
    
    //cell.textLabel.text = product.title;
    
    return  cell;
}



@end
