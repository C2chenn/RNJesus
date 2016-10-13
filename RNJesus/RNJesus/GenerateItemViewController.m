//
//  GenerateItemViewController.m
//  RNJesus
//
//  Created by caitlin chen on 9/8/15.
//  Copyright (c) 2015 caitlin chen. All rights reserved.
//

#import "GenerateItemViewController.h"

@interface GenerateItemViewController ()
@property (weak, nonatomic) IBOutlet UIButton *choose;
@property (weak, nonatomic) IBOutlet UITextField *items;

@end

@implementation GenerateItemViewController

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
    NSString *itemList = [_items text];
    NSArray *choices = [itemList componentsSeparatedByString:@" "];
    
    int num = arc4random() % [choices count];
    
    
    
    JesusViewController *jvc = (JesusViewController*)segue.destinationViewController;
    [jvc setChosenOne:[choices objectAtIndex:num]];
    
}


@end
