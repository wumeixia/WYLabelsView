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

@end
