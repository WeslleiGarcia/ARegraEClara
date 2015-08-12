//
//  UIViewControllerTopicosRegras.swift
//  ARegraEClara
//
//  Created by Wesllei on 07/08/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import UIKit


class UIViewControllerTopicosRegras: UIViewController {
    
    @IBOutlet weak var textViewDescricaoTopico: UITextView!
    
     var topicoRegra : Regra?
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         //Do any additional setup after loading the view, typically from a nib.
//        if let titulo = topicoRegra?.topicos{
//            title = titulo
//        }else{
//            title = " "
//        }
//        
//        textViewDescricaoTopico.text = topicoRegra?.descricao
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
