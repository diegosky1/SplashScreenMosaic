//
//  ViewController.h
//  loadingscreen2
//
//  Created by Diego Quevedo on 30/09/13.
//  Copyright (c) 2013 Diego Quevedo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>{
    
    //vistas
    IBOutlet UIImageView *AnitmationimageView;//a
    IBOutlet UIImageView *Loadimageview;//b
    
    
    
    //elementos
    IBOutlet UIImageView *vistaLogo;//logo
    IBOutlet UITextField *campoUsuario;
    IBOutlet UITextField *campoPassword;
    IBOutlet UIButton *botonLogin;
}

@end
