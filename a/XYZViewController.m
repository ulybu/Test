//
//  XYZViewController.m
//  a
//
//  Created by Élèves on 21/09/12.
//  Copyright (c) 2012 pprentissage delegate. All rights reserved.
//

#import "XYZViewController.h"

@interface XYZViewController ()

@end

@implementation XYZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImageView *imageView= [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"African Daisy.gif"]];
    [self.view addSubview:imageView];
    _label =[[UILabel alloc] initWithFrame:CGRectMake(30, 30, 150, 30)];
    [_label setBackgroundColor: [UIColor clearColor]];
    _label.text=@"pas de ,otes..";
    [self.view addSubview: _label];
    
    _button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _button.frame = CGRectMake(20, 70, 80, 30);
    [_button addTarget:self action:@selector(validerSaisieNote:)forControlEvents:UIControlEventTouchUpInside];
    [_button setTitle:@"Ajouter" forState:UIControlStateNormal];
    [self.view addSubview:_button];
    
    _textF = [[UITextField alloc] initWithFrame:CGRectMake(20, 110, 200, 30)];
    _textF.keyboardType = UIKeyboardTypeNumberPad;
    _textF.borderStyle = UITextBorderStyleRoundedRect;
    _textF.clearsOnBeginEditing = YES;
    [self.view addSubview:_textF];
    
    }
- (void)validerSaisieNote:(id)sender {
    // On rentre le clavier
    [_textF resignFirstResponder];
}
#pragma mark - GestionNotes delegate methods


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
