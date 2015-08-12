//
//  UIViewControllerDetalheRegra.swift
//  ARegraEClara
//
//  Created by Wesllei on 10/08/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import UIKit



class UIViewControllerDetalheRegra: UIViewController, UITableViewDataSource, UITableViewDelegate  {
   
    @IBOutlet weak var tableViewTopicosExcecoes: UITableView!
    @IBOutlet weak var textViewDescricao: UITextView!
    @IBOutlet weak var imageRegra: UIImageView!
    
    var regra : Regra?
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
       return (regra!.topicos?.count)!
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellTopicos", forIndexPath: indexPath)
        
        // Configure the cell...
//        let regraLine = regraLines[indexPath.section]
//        let regra = regraLine.regras[indexPath.row]
        cell.textLabel?.text =  regra!.topicos![indexPath.row]  //regra!.topicos![indexPath.row]
     
        
        return cell
    }
    

    
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        section == 0
        
        return  "Tópicos"
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //SegueDetalheRegra
        if segue.identifier == "SegueDetalheTopicoRegra"{
            let row = tableViewTopicosExcecoes.indexPathForCell(sender as! UITableViewCell)?.row
            (segue.destinationViewController as! UIViewControllerTopicosRegras).topicoRegra = regras[row!]//consertar aqui porque nao pega meu topicos regra e sim as regras da view anterior
        }
        
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let titulo = regra?.titulo{
            title = titulo
        }else{
            title = " "
        }
        imageRegra.image = regra?.imagem
        textViewDescricao.text = regra?.descricao
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
