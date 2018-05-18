//
//  ViewController.h
//  Crayons
//
//  Created by Alex Paul on 5/17/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) UITableView *crayonTableView;
@property (strong, nonatomic) NSArray* crayons;

@end
