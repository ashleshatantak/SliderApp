//
//  ViewController.m
//  SliderChange
//
//  Created by Student-001 on 17/11/16.
//  Copyright © 2016 Ashlesha. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _v1=[[UIView alloc]initWithFrame:CGRectMake(50, 50, 250, 100)];
    
    _slider=[[UISlider alloc]initWithFrame:CGRectMake(50, 300, 250, 30)];
    _slider.maximumTrackTintColor=[UIColor blackColor];
    _slider.minimumTrackTintColor=[UIColor blueColor];
    _slider.minimumValue=1;
    _slider.maximumValue=100;
    [_slider addTarget:self action:@selector(sliderchange:) forControlEvents:UIControlEventValueChanged];
    
    
    [self.view addSubview:_slider];
    
    // second slider
    _slider1=[[UISlider alloc]initWithFrame:CGRectMake(50, 350, 250, 30)];
    _slider1.maximumTrackTintColor=[UIColor blackColor];
    _slider1.minimumTrackTintColor=[UIColor blueColor];
    _slider1.minimumValue=1;
    _slider1.maximumValue=100;
    [_slider1 addTarget:self action:@selector(sliderchange:) forControlEvents:UIControlEventValueChanged];
    
    
    [self.view addSubview:_slider1];
    
    
    //slider 3
    _slider2=[[UISlider alloc]initWithFrame:CGRectMake(50, 400, 250, 30)];
    _slider2.maximumTrackTintColor=[UIColor blackColor];
    _slider2.minimumTrackTintColor=[UIColor blueColor];
    _slider2.minimumValue=1;
    _slider2.maximumValue=100;
    [_slider2 addTarget:self action:@selector(sliderchange:) forControlEvents:UIControlEventValueChanged];
    
    
    [self.view addSubview:_slider2];
    
    
    [self.view addSubview:_v1];

}

-(void)sliderchange:(id)sender
{
    
    
    CGFloat redval=00.f;
    CGFloat greenval=00.f;
    CGFloat blueval=00.f;
    
    sender=_slider;
    redval=_slider.value;
    
    sender=_slider1;
    greenval=_slider1.value;
    
    
    sender=_slider2;
    blueval=_slider2.value;
    
    
    
    _v1.backgroundColor=[UIColor colorWithRed:redval/255.0 green:greenval/255.0 blue:blueval/255.0 alpha:1.0f];
    
    
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
