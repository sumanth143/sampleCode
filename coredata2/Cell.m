//
//  Cell.m
//  coredata2
//
//  Created by student on 8/21/17.
//  Copyright © 2017 vinod. All rights reserved.
//

#import "Cell.h"
#import "TableDataViewController.h"

@implementation Cell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.lbl1.text=self.dataStr1;
    self.lbl2.text=self.dataStr2;

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
