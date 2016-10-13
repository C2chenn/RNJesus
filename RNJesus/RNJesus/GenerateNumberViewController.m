//
//  GenerateNumberViewController.m
//  RNJesus
//
//  Created by caitlin chen on 9/8/15.
//  Copyright (c) 2015 caitlin chen. All rights reserved.
//

#import "GenerateNumberViewController.h"

@interface GenerateNumberViewController ()
@property (weak, nonatomic) IBOutlet UIButton *choose;
@property (weak, nonatomic) IBOutlet UITextField *number2;
@property (weak, nonatomic) IBOutlet UITextField *number1;

@end

@implementation GenerateNumberViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    NSString *num1 = [_number1 text];
    NSString *num2 = [_number2 text];
    int no1 = [num1 intValue];
    int no2 = [num2 intValue];
    int num;
    
    if (no1 > no2){
        num = no2 + arc4random() % (no1 - no2);
    } else {
        num = no1 + arc4random() % (no2 - no1);
    }

    NSString *chosenNum = [NSString stringWithFormat:@"%d", num];
    
    JesusViewController *jvc = (JesusViewController*)segue.destinationViewController;
    [jvc setChosenOne:chosenNum];

    
}


@end
