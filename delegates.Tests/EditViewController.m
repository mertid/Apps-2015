//
//  EditViewController.m
//  delegates.
//
//  Created by Merritt Tidwell on 1/27/15.
//  Copyright (c) 2015 Merritt Tidwell. All rights reserved.
//

#import "EditViewController.h"

@interface EditViewController ()

@end

@implementation EditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view


}

-(void)viewWillAppear:(BOOL)animated {

    self.stateLabel.text = _State;
    self.tfZipCode.text = _ZIP;

}
-(void)viewDidDisappear:(BOOL)animated{

    [self.tfZipCode endEditing:YES];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
   


}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{

    [self.tfZipCode endEditing:YES];
}


- (IBAction)doneButtonPressed:(id)sender {

    [self.navigationController popViewControllerAnimated:YES];
    
    [self.Delegate ZipEditedDone:_ZIP newZIP:_tfZipCode.text];
    

}
@end
