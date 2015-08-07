//
//  UIViewControllerChamarAmigos.swift
//  ARegraEClara
//
//  Created by Wesllei on 07/08/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import UIKit


class UIViewControllerChamarAmigos: UIViewController {
    
    @IBOutlet weak var newImgView: UIImageView!
    
    var name : AnyObject?{
        get{
            return NSUserDefaults.standardUserDefaults().objectForKey("name")
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //NSUserDefault
        
        newImgView.image = UIImage(named: name as! String)
         // name de AnyObject
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
