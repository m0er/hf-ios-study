//
//  DetailViewController.m
//  SpinCity
//
//  Created by ChoiAiden on 2015. 11. 15..
//  Copyright © 2015년 Element 84. All rights reserved.
//

#import "DetailViewController.h"
#import "Album.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    self.albumTitleLabel.text = self.detailItem.title;
    self.priceLabel.text = [NSString stringWithFormat:@"$%01.2f", self.detailItem.price];
    self.artistLabel.text = self.detailItem.artist;
    self.locationLabel.text = self.detailItem.locationInStore;
    self.descriptionTextView.text = self.detailItem.summary;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
