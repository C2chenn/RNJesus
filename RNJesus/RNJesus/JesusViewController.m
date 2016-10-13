//
//  JesusViewController.m
//  RNJesus
//
//  Created by caitlin chen on 9/8/15.
//  Copyright (c) 2015 caitlin chen. All rights reserved.
//

#import "JesusViewController.h"
#import "GenerateNumberViewController.h"
#import "GenerateItemViewController.h"

@interface JesusViewController ()
@property (weak, nonatomic) IBOutlet UILabel *choice;

@end

@implementation JesusViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _choice.text = self.chosenOne;
   

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
