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


    UIImageView *fotoBaseView;
    UIButton *abrirGaleria;
    UIButton *tomarFoto;
    UIButton *compartir;
    
    


}



@property (nonatomic, strong) IBOutlet UIImageView *fotoBaseView;
@property (nonatomic, strong) IBOutlet UIButton *abrirGaleria;
@property (nonatomic, strong) IBOutlet UIButton *tomarFoto;

- (IBAction)enviarFoto:(id)sender;







@end
