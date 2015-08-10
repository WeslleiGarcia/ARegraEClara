//
//  UIViewControllerPerfil.swift
//  ARegraEClara
//
//  Created by Wesllei on 07/08/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import UIKit

class UIViewControllerPerfil: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    @IBOutlet weak var imgPerfil: UIImageView!
    
    
    
    @IBAction func btCamera(sender: AnyObject) {
        
        let picker = UIImagePickerController()
        
        picker.delegate = self
       
        
        presentViewController(picker, animated: true, completion: nil)

        
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        imgPerfil.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        
        
    }
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
        
        
    }
}
