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
    var timer = NSTimer()
    var counter = 10
    

    
    
    @IBOutlet weak var lbCounter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbCounter.text = String(counter)
        
        //contruindo o Alert
        alertController = UIAlertController(title: "Ranking", message: nil, preferredStyle: .Alert)
        
        //Adicionando Ações
        let alertAction = UIAlertAction(title: "Sair", style: UIAlertActionStyle.Default) { (action) -> Void in
            print("botao sair pressionado")
            self.Timer()
        }
        alertController?.addAction(alertAction)
        
        
        alertController?.addTextFieldWithConfigurationHandler({ (textField) -> Void in
            //configurando o textField
            textField.placeholder = "Insira seu nome aqui"
        })
        let alertActionForTextField = UIAlertAction(title: "Jogar", style: UIAlertActionStyle.Default) { (action) -> Void in
            
            if let textFields = self.alertController?.textFields{
                let theTextFields = textFields as [UITextField]
                let username = theTextFields[0].text
                
                print("seu nome é : \(username)")
                
   
                
                
            }
            self.Timer()
            
        }
        alertController?.addAction(alertActionForTextField)
        
        if counter == 0 {
            ZerarCronometro()
        }
        
    }
    
    func Timer(){
        
        self.timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("Update"), userInfo: nil, repeats: true)
        
    }
    
    func Update(){
        lbCounter.text = String(counter--)
        if counter == 0 {
            GameOver()
        }
        
    }
    
    func Stop(){
        timer.invalidate()
    }
    
    func ZerarCronometro(){
        timer.invalidate()
        counter = 10
        lbCounter.text = String(counter)
        
    }
    
    func GameOver(){
        ZerarCronometro()
        
    }
    
    func GameWin(){
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.presentViewController(alertController!, animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}
