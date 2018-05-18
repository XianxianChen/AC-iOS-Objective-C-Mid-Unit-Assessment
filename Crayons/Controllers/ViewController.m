//
//  ViewController.m
//  Crayons
//
//  Created by Alex Paul on 5/17/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

#import "ViewController.h"
#import "Crayon.h"
#import "CrayonCell.h"

#define CELLID "crayonCell"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setBackGround];
    [self allocInitSubviews];
    //[self configureConstraints];
    [self addSubviews];
    [self configureTableView];
    self.title = @"Crayons";
    [self loadColors];
}
- (void)setBackGround {
    self.view.backgroundColor = UIColor.yellowColor;
}
- (void)allocInitSubviews {
    _crayonTableView = [[UITableView alloc] initWithFrame:UIScreen.mainScreen.bounds];
    _crayons = [[NSArray alloc] init];
}
- (void)configureTableView {
    self.crayonTableView.delegate = self;
    self.crayonTableView.dataSource = self;
//    UINib* nib = [UINib nibWithNibName:@"crayonCell" bundle:nil];
//    [self.crayonTableView registerNib:nib forCellReuseIdentifier:@"crayonCell"];
    [self.crayonTableView registerClass:CrayonCell.class forCellReuseIdentifier:@"crayonCell"];
}
- (void)addSubviews {
    [self.view addSubview:self.crayonTableView];
}
//-(void)configureConstraints {
//    self.crayonTableView.translatesAutoresizingMaskIntoConstraints = NO;
//    [NSLayoutConstraint activateConstraints:@[
//    [self.crayonTableView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor],
//    [self.crayonTableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor],
//    [self.crayonTableView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor],
//    [self.crayonTableView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor]
//    ]
//     ];
//}

#pragma mark - Load/Filter Data
-(void)loadColors {
    self.crayons = [Crayon allTheCrayons];
}

#pragma mark - UITableView Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}
#pragma mark - UITableView DataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.crayons.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CrayonCell* cell = [tableView dequeueReusableCellWithIdentifier:@CELLID forIndexPath:indexPath];
    if (cell) {
        Crayon *crayon = _crayons[indexPath.row];
        [cell configureCellWith:crayon];
        cell.textLabel.text = crayon.name;
    }
    return cell;
}


















































@end
