//
//  CrayonCell.h
//  Crayons
//
//  Created by C4Q on 5/18/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Crayon.h"
@interface CrayonCell: UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

-(void)configureCellWith:(Crayon*) crayon;
@end
