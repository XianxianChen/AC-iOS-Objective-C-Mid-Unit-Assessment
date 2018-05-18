//
//  CrayonCell.m
//  Crayons
//
//  Created by C4Q on 5/18/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

#import "CrayonCell.h"

@implementation CrayonCell

-(void) configureCellWith:(Crayon *)crayon {
    self.backgroundColor = [[UIColor alloc] initWithRed: (CGFloat)crayon.red/255 green:(CGFloat)crayon.green/255 blue:(CGFloat)crayon.blue/255 alpha:(CGFloat)1];
    self.nameLabel.text = crayon.name;
   // [self setupNameLabelConstraints];
}
-(void) setupNameLabelConstraints {
    [self addSubview:_nameLabel];
    self.nameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
    [self.nameLabel.topAnchor constraintEqualToAnchor:self.topAnchor],
    [self.nameLabel.bottomAnchor constraintEqualToAnchor:self.bottomAnchor],
    [self.nameLabel.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
    [self.nameLabel.trailingAnchor constraintEqualToAnchor:self.trailingAnchor]
                                        ]
     ];
    
}



















@end
