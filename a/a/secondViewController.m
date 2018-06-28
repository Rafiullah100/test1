//
//  secondViewController.m
//  a
//
//  Created by Romi_Khan on 27/04/2017.
//  Copyright © 2017 SoftBrain. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self saveText];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(int)method{
    
    int number;
    number = 10;
    return number;
}
-(void)saveText{
    [self.delegate sendTextToViewController:@"this is text this is text this is text"];
}


- (IBAction)buttonMethod:(id)sender {
    [self.textField resignFirstResponder];
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
