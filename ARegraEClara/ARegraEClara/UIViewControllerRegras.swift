//
//  UIViewControllerRegras.swift
//  ARegraEClara
//
//  Created by Wesllei on 07/08/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import UIKit
var regras = [Regra]()

class UIViewControllerRegras: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    
    
     func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  regras.count
    }
    
    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellRegra", forIndexPath: indexPath) as! CustomCellRegra
        
        // Configure the cell...
        
        cell.lbNumeroRegra.text = regras[indexPath.row].numeroRegra
        cell.lbTituloRegra.text = regras[indexPath.row].titulo
     
        
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
        let regra1 = Regra(numeroRegra: "1", titulo: "O campo de jogo", descricao: "O campo de jogo será retangular. O comprimento da linha lateral deverá ser superior ao comprimento da linha de meta.", topicos: ["Dimensões", "Marcação do campo de jogo", "A área de meta", "A área penal", "Bandeiras de canto", "A área de canto", "As metas", "Segurança"], descricaoTopico: ["Comprimento: mínimo 90 m, máximo 120 m; Largura:mínima 45 m, máxima 90 m; Partidas Internacionais- Comprimento: mínimo 100 m, máximo 110 m; Largura: mínima 64 m, máxima 75 m"], excecao: "")
        
        let regra2 = Regra(numeroRegra: "2", titulo: "A bola", descricao: "Se a bola estoura ou se danifica durante uma partida: \n\n o jogo será interrompido;\n o jogo se reiniciará por meio de bola ao chão, executada com uma nova bela no lugar onde a primeira bola se danificou. \n\n\n Se a bola estoura ou se danifica em um momento em que não está em jogo (tiro inicial de meta, tiro de canto, tiro livre, tiro penal ou arremesso lateral):\n\n a partida se reiniciará conforme as regras. A bola não poderá ser trocada durante a partida sem a autorização do árbitro.", topicos: [""], descricaoTopico: [""], excecao: "")
        
        regras += [regra1]
        regras += [regra2]

        
    }
    
     override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
