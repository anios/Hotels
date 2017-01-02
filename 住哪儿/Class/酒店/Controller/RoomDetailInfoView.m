
//
//  RoomDetailInfoView.m
//  住哪儿
//
//  Created by geek on 2017/1/2.
//  Copyright © 2017年 geek. All rights reserved.
//

#import "RoomDetailInfoView.h"

@interface RoomDetailInfoView()
@property (weak, nonatomic) IBOutlet UILabel *roomNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *giftLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *periodLabel;
@property (weak, nonatomic) IBOutlet UILabel *dailyPriceLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalPrice;
@property (weak, nonatomic) IBOutlet UILabel *actuallyPrice;
@property (weak, nonatomic) IBOutlet UILabel *gitLabel;
@end

@implementation RoomDetailInfoView

- (void)awakeFromNib {
    [super awakeFromNib];
    self.gitLabel.layer.borderWidth = 1;
    self.gitLabel.layer.borderColor = [UIColor blueColor].CGColor;
    self.gitLabel.layer.cornerRadius = 2;
    self.gitLabel.layer.masksToBounds = YES;
    
    UITapGestureRecognizer *close = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeThisPage)];
    close.cancelsTouchesInView = YES;
    [self addGestureRecognizer:close];
}


-(void)closeThisPage{
    [self removeFromSuperview];
}

@end
