//
//  FillLabelView.m
//  Sample
//
//  Created by sunleepy on 12-10-19.
//  Copyright (c) 2012年 sunleepy. All rights reserved.
//

#import "WYLabelView.h"
#import "WYLabel.h"
#import "UIColor+extend.h"

@implementation WYLabelView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.tagColors = @[@"7b93d0", @"ee9459", @"ffc910",@"fb9170",@"a791ef",@"ef91d3"];
    }
    return self;
}

//- (void)setTagColors:(NSArray *)tagColors{
//    
//}

//- (NSArray *)tagColors{
//    if (!self.tagColors) {
//        self.tagColors = @[@"7b93d0", @"ee9459", @"ffc910",@"fb9170",@"a791ef",@"ef91d3"];
//    }
//    return self.tagColors;
//}

- (void)bindTags:(NSMutableArray*)tags
{
    CGFloat frameWidth = self.frame.size.width;
    
    CGFloat tagsTotalWidth = 0.0f;
    CGFloat tagsTotalHeight = 0.0f;
    
    for (id obj in self.subviews) {
        WYLabel * lab = (WYLabel *)obj;
        [lab removeFromSuperview];
    }
    
    CGFloat tagHeight = 0.0f;
    for (NSString *tag in tags)
    {
        WYLabel *fillLabel = [[WYLabel alloc] initWithFrame:CGRectMake(tagsTotalWidth, tagsTotalHeight, 0, 0)];
        fillLabel.text = tag;
        int x = arc4random() % (self.tagColors.count);
        [fillLabel setBackgroundColor:[UIColor getColor:self.tagColors[x]]];
        fillLabel.layer.borderColor = [[UIColor getColor:self.tagColors[x]] CGColor];
        tagsTotalWidth += fillLabel.frame.size.width + 2;
        tagHeight = fillLabel.frame.size.height;
                
        if(tagsTotalWidth >= frameWidth)
        {
            tagsTotalHeight += fillLabel.frame.size.height + 2;
            tagsTotalWidth = 0.0f;
            fillLabel.frame = CGRectMake(tagsTotalWidth, tagsTotalHeight, fillLabel.frame.size.width, fillLabel.frame.size.height);
            tagsTotalWidth += fillLabel.frame.size.width + 2;
        }
        
        UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(figerTap:)];
        [fillLabel addGestureRecognizer:tap];
        
        [self addSubview:fillLabel];
    }
    tagsTotalHeight += tagHeight;
    
    self.labViewH = tagsTotalHeight;
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, tagsTotalHeight);
}

-(void)figerTap:(UITapGestureRecognizer *)tap{
    WYLabel * lab = (WYLabel *)tap.view;
    NSLog(@"string = %@",lab.text);
}

@end
