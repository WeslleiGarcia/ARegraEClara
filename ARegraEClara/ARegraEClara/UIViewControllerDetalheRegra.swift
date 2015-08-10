//
//  UIViewControllerDetalheRegra.swift
//  ARegraEClara
//
//  Created by Wesllei on 10/08/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import UIKit

class UIViewControllerDetalheRegra: UIViewController {
   
    var regras: Regra?
    
    @IBOutlet weak var textViewDescricao: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textViewDescricao.text = regras?.descricao
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
