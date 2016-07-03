//
//  ViewController.m
//  WYLabelsView
//
//  Created by 王玉 on 16/6/27.
//  Copyright © 2016年 王玉. All rights reserved.
//

#import "ViewController.h"

#import "WYLabelView.h"

@interface ViewController ()
{
    WYLabelView * m_wyLabelView;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"web",@"hybrid",@"native",@"leepy",@"sunleepy",@"标签",@"红色",@"thanks",@"hadfhajba",nil];
    
    WYLabelView *wyLabelView = [[WYLabelView alloc] initWithFrame:CGRectMake(10, 50, 300, 200)];
    [wyLabelView bindTags:array];
    m_wyLabelView = wyLabelView;
    [self.view addSubview:wyLabelView];
    
    NSLog(@"fillLabelView size: %f, %f", wyLabelView.frame.size.width, wyLabelView.frame.size.height);
    
    UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(30, 300, 60, 40)];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn setTitle:@"刷新" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(fresh:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

-(void)fresh:(UIButton *)btn{
    
    btn.selected = !btn.selected;
    if (btn.selected) {
        NSMutableArray *array = [NSMutableArray arrayWithObjects:@"web",@"hybrid",@"native",@"leepy",@"sunleepy",@"标签",@"红色",@"thanks",@"hadfhajba",nil];
        [m_wyLabelView bindTags:array];
    }else{
        NSMutableArray *array = [NSMutableArray arrayWithObjects:@"qwye",@"12673",@"bndvdfd",@"ojprq",@"mfnvk",@"标签",@"红色",@"你可否借我",@"饭局了",@"afbvalf",@"啊科技部 v 岸边，啊的",@"看；俄方 v 就按到风口浪尖",nil];
        [m_wyLabelView bindTags:array];
    }
}

@end
