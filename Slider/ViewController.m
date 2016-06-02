//
//  ViewController.m
//  Slider
//
//  Created by UsFromMini on 6/2/16.
//  Copyright © 2016 Jamil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(50,100,276,10)];
    [slider addTarget:self action:@selector(sliderAction:) forControlEvents:UIControlEventValueChanged];
    slider.minimumValue = 0.6;
    slider.maximumValue = 1.0;
    slider.continuous = NO; //dont send updated value to the action
    slider.value = 0.7;
    [self.view addSubview:slider];
    
    
    UILabel* lblFirstInSlider = [[UILabel alloc] initWithFrame:CGRectMake(69, 0, 1, 9)];
    lblFirstInSlider.backgroundColor = [UIColor blueColor];// slider.maximumTrackTintColor;
    [slider addSubview:lblFirstInSlider];
    
    
    UILabel* lblSecondInSlider = [[UILabel alloc] initWithFrame:CGRectMake(69*2, 0, 1, 9)];
    lblSecondInSlider.backgroundColor = [UIColor blueColor];
    [slider addSubview:lblSecondInSlider];
    
    
    UILabel* lblThirdInSlider = [[UILabel alloc] initWithFrame:CGRectMake(69*3, 0, 1, 9)];
    lblThirdInSlider.backgroundColor = [UIColor blueColor];
    [slider addSubview:lblThirdInSlider];
    
    
    UILabel* lblMinSliderValue = [[UILabel alloc] initWithFrame:CGRectMake(50, slider.frame.origin.y-37, 40, 40)];
    [lblMinSliderValue setText:@"0.6"];
    [lblMinSliderValue setFont:[UIFont fontWithName:@"HelveticaNeueRegular" size:9]];
    [lblMinSliderValue setTextColor:[UIColor whiteColor]];
    
    [self.view addSubview:lblMinSliderValue];
   
    
    
    UILabel*  lblMaxSliderValue = [[UILabel alloc] initWithFrame:CGRectMake(slider.frame.size.width+slider.frame.origin.x-26, slider.frame.origin.y-37, 40, 40)];
    [lblMaxSliderValue setText:@"1.0"];
    [lblMaxSliderValue setFont:[UIFont fontWithName:@"HelveticaNeueRegular" size:9]];
    [lblMaxSliderValue setTextColor:[UIColor whiteColor]];
    
     [self.view addSubview:lblMaxSliderValue];

}
-(void)sliderAction:(id)sender{
    
    
    UISlider* slider = (UISlider*)sender;
    
    [slider setValue:[self roundSliderValue:slider.value] animated:NO];
    
    
}

-(float)roundSliderValue:(float)x {
    
    NSLog(@"X here: %f",x);
    
    if (x < 0.65) {
        return .6;
    } else if (x < .75) {
        return .7;
    } else if (x < .85) {
        return .8;
    } else if (x <.95) {
        return .9;
    } else {
        return 1.0;
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
