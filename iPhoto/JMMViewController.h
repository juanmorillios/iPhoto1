//
//  JMMViewController.h
//  iPhoto
//
//  Created by Juan Morillios on 31/05/14.
//  Copyright (c) 2014 JuanMorillios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JMMViewController : UIViewController <UIImagePickerControllerDelegate>

{


    UIImageView *imageView;
    UIButton *abrirGaleria;
    UIButton *tomarFoto;
    UIButton *compartir;
    
    


}



@property (nonatomic, strong) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) IBOutlet UIButton *abrirGaleria;
@property (nonatomic, strong) IBOutlet UIButton *tomarFoto;

- (IBAction)compartirButton:(id)sender;







@end
