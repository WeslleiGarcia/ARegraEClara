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
    
     var regra : Regra?
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
       return (regra?.topicos?.count)!
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellTopicos", forIndexPath: indexPath)
        
        //let CellExcecao = tableView.dequeueReusableCellWithIdentifier("CellExcecao", forIndexPath: indexPath) as! //CustomCellExcecao
        
        // Configure the cell...
        
        cell.textLabel?.text = regra!.topicos![indexPath.row]
     
        
        return cell
    }
    

    
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        section == 0
        
        return  "Tópicos"
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let titulo = regra?.titulo{
            title = titulo
        }else{
            title = " "
        }

        textViewDescricao.text = regra?.descricao
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
