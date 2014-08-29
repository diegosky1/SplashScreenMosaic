//
//  ViewController.m
//  loadingscreen2
//
//  Created by Diego Quevedo on 30/09/13.
//  Copyright (c) 2013 Diego Quevedo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    vistaLogo.image=[UIImage imageNamed:@"iconosLoading300"];
    
    [vistaLogo setHidden:YES];
    [campoUsuario setHidden:YES];
    [campoPassword setHidden:YES];
    [botonLogin setHidden:YES];
    
    [botonLogin setBackgroundColor:[UIColor colorWithRed:46/255.0f green:88/255.0f blue:149/255.0f alpha:1]];
    campoPassword.secureTextEntry=YES;
    
    [campoUsuario setFrame:CGRectMake(34,209,250,40)];
    [campoPassword setFrame:CGRectMake(34,255,250,40)];
    
    AnitmationimageView.animationImages = [NSArray arrayWithObjects:
                                           [UIImage imageNamed:@"2"],
                                           [UIImage imageNamed:@"3"],
                                           [UIImage imageNamed:@"4"],
                                           [UIImage imageNamed:@"5"],
                                           [UIImage imageNamed:@"6"],
                                           [UIImage imageNamed:@"7"],
                                           [UIImage imageNamed:@"8"],
                                           [UIImage imageNamed:@"9"],
                                           [UIImage imageNamed:@"10"],
                                           [UIImage imageNamed:@"11"],
                                           [UIImage imageNamed:@"12"],
                                           [UIImage imageNamed:@"13"],nil];
    [AnitmationimageView setAnimationRepeatCount:1];
    AnitmationimageView.animationDuration = 2;
    [AnitmationimageView startAnimating];
    [self performSelector:@selector(delay1) withObject:nil afterDelay:2];

    //permiten que los campos se muevan a la par de el teclado
    campoUsuario.delegate=self;
    campoPassword.delegate=self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Animación de fondo, logo, campos y boton
-(void)delay1 {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:2.5];
    [AnitmationimageView setAlpha:0.5];
    [UIView commitAnimations];
    [self performSelector:@selector(logoYcampos) withObject:nil afterDelay:0.85];
}
-(void)logoYcampos{
    [vistaLogo setHidden:NO];
    [campoUsuario setHidden:NO];
    [campoPassword setHidden:NO];
    [botonLogin setHidden:NO];
}

//mover los campos y logo al mismo tiempo que el  teclado aparece
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if ([[UIScreen mainScreen] bounds].size.height == 568) { } else { /*[self.view setFrame:CGRectMake(0,-90,320,570)]; */
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:0.28];
        [vistaLogo setFrame:CGRectMake(83,-50,154,142)];
        [campoUsuario setFrame:CGRectMake(34,109,250,40)];
        [campoPassword setFrame:CGRectMake(34,155,250,40)];
        [botonLogin setFrame:CGRectMake(34,212,250,40)];
        [UIView commitAnimations];
        
    }
    return YES;
}

//Esconder el teclado
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [campoUsuario resignFirstResponder];
    [campoPassword resignFirstResponder];
    if ([[UIScreen mainScreen] bounds].size.height == 568) { } else { /*[self.view setFrame:CGRectMake(0,0,320,480)];*/
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:0.28];
        [vistaLogo setFrame:CGRectMake(83, 53, 154,142)];
        [campoUsuario setFrame:CGRectMake(34,209,250,40)];
        [campoPassword setFrame:CGRectMake(34,255,250,40)];
        [botonLogin setFrame:CGRectMake(34, 312,250,40)];
        [UIView commitAnimations];
    }
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    if (textField) {
        [textField resignFirstResponder];
    }
    return NO;
}


@end
