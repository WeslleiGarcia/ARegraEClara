//
//  UIViewControllerPerguntas.swift
//  ARegraEClara
//
//  Created by Wesllei on 07/08/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import UIKit

class UIViewControllerPerguntas: UIViewController {
    
     var alertController: UIAlertController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //contruindo o Alert
        alertController = UIAlertController(title: "Ranking", message: nil, preferredStyle: .Alert)
        
        //Adicionando Ações
        let alertAction = UIAlertAction(title: "Sair", style: UIAlertActionStyle.Default) { (action) -> Void in
            print("botao sair pressionado")
        }
        alertController?.addAction(alertAction)
        
        
        alertController?.addTextFieldWithConfigurationHandler({ (textField) -> Void in
            //configurando o textField
            textField.placeholder = "Insira seu nome aqui"
        })
        let alertActionForTextField = UIAlertAction(title: "Jogar", style: UIAlertActionStyle.Default) { (action) -> Void in
            
            if let textFields = self.alertController?.textFields{
                let theTextFields = textFields as! [UITextField]
                let username = theTextFields[0].text
                
                print("seu nome é : \(username)")
                
            }
        }
        alertController?.addAction(alertActionForTextField)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.presentViewController(alertController!, animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}
