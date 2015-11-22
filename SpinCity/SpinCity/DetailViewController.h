//
//  DetailViewController.h
//  SpinCity
//
//  Created by ChoiAiden on 2015. 11. 15..
//  Copyright © 2015년 Element 84. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Album;

@interface DetailViewController : UITableViewController

@property (strong, nonatomic) Album *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *albumTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *artistLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextView;

@end

