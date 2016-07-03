//
//  FillLabelView.h
//  Sample
//
//  Created by sunleepy on 12-10-19.
//  Copyright (c) 2012年 sunleepy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WYLabelView : UIView

@property (strong, nonatomic) NSArray *tagColors;

- (void)bindTags:(NSMutableArray*)tags;

@property (copy, nonatomic) NSString * name;

@property (assign, nonatomic) CGFloat labViewH;
@property (assign, nonatomic) NSInteger row;//传入不同的row，标签的第一个颜色值不同

@end
