//
//  JMMViewController.m
//  iPhoto
//
//  Created by Juan Morillios on 31/05/14.
//  Copyright (c) 2014 JuanMorillios. All rights reserved.
//

#import "JMMViewController.h"

@interface JMMViewController ()

@end

@implementation JMMViewController

@synthesize fotoBaseView, abrirGaleria, tomarFoto;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id)extracted_method:(UIImagePickerController *)picker {
    // Define el Delegate
    return picker.delegate = self;
}

- (IBAction)abrirGaleria:(id)sender {
    
    
    // Inicia el Controlador
    UIImagePickerController * picker = [[UIImagePickerController alloc] init];
    // Define el Delegate
    picker.delegate = self;
    // Establece el origen de la imagen
    picker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    // Agrega la vista del controlador a la pantalla
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
    {
        UIPopoverController *popover = [[UIPopoverController alloc] initWithContentViewController:picker];
       
        [popover presentPopoverFromRect:CGRectMake(200, 940.0, 0.0, 0.0)
                                 inView:self.view
               permittedArrowDirections:UIPopoverArrowDirectionAny
                               animated:YES];
    }
    else
        [self presentModalViewController:picker animated:YES];
    
    
    
   }


- (IBAction)tomarFoto:(id)sender
{
    UIImagePickerController * picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    [self presentModalViewController:picker animated:YES];
}

// Recibe el mensaje cuando el controlador a finalizado
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    // Quita la vista del controlador
    [picker dismissModalViewControllerAnimated:YES];
    // Establece la imagen tomada en el objeto UIImageView
    fotoBaseView.image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
}


- (IBAction)enviarFoto:(id)sender {
    
    
    NSString *textoPorCompartir = [NSString stringWithFormat:@"Mira mi última foto que , espero que te guste %@! #JuanMorillios", nil];
    
    NSArray *cosasPorCompartir = @[textoPorCompartir, fotoBaseView.image];
    
    UIActivityViewController *compartir = [[UIActivityViewController alloc] initWithActivityItems:cosasPorCompartir applicationActivities:nil];
    
    [self presentViewController:compartir animated:YES completion:nil];
    
    
    
}




@end
