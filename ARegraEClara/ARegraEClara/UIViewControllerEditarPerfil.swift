//
//  UIViewControllerEditarPerfil.swift
//  ARegraEClara
//
//  Created by Wesllei on 10/08/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import UIKit

class UIViewControllerEditarPerfil: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imgPerfilEdit: UIImageView!
    
    @IBOutlet weak var textFieldNome: UITextField!
    
    
    @IBAction func btCamera(sender: AnyObject) {
        
        let picker = UIImagePickerController()
        
        picker.delegate = self
        
        
        presentViewController(picker, animated: true, completion: nil)
        
        
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        imgPerfilEdit.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    

    @IBAction func Save(sender: AnyObject) {
        
        
        
    }
    override func viewDidLoad(){
        super.viewDidLoad()
        
        
        
    }
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
        
        
    }


}
