//
//  UIViewControllerRegras.swift
//  ARegraEClara
//
//  Created by Wesllei on 07/08/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import UIKit



class UIViewControllerRegras: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!

     func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return regraLines.count
    }
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let regraLine = regraLines[section]
        return (regraLine.regras.count)
    }
    
    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellRegra", forIndexPath: indexPath) as! CustomCellRegra
        
        // Configure the cell...
        
        let regraLine = regraLines[indexPath.section]
        //let regra = regraLine.regras[indexPath.row]
        cell.lbNumeroRegra.text = regraLine.regras[indexPath.row].numeroRegra
        cell.lbTituloRegra.text = regraLine.regras[indexPath.row].titulo
        cell.imgRegra.image = regraLine.regras[indexPath.row].imagem
     
        
        return cell
    }
    

    
    
    
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        section == 0
        
        return  "Regras"
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //SegueDetalheRegra
        if segue.identifier == "SegueDetalheRegra"{
            let row = tableView.indexPathForCell(sender as! UITableViewCell)?.row
            (segue.destinationViewController as! UIViewControllerDetalheRegra).regra = regras[row!]
        }
            
    }
    
    
     override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
 
    }
    
     override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
