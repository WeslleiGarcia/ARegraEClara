
//
//  Campeonato.swift
//  ARegraEClara
//
//  Created by Wesllei on 10/08/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import Foundation
import UIKit

class Campeonato {
    var nome :  String?
    var pais : Pais
    var clubes : [Clube]?
    var imagem : UIImage?
   
    
    init(nomeCampeonato : String, paisCampeonato: Pais, clubesPrincipais: [Clube], image:String){
        self.nome = nomeCampeonato
        self.pais = paisCampeonato
        self.clubes = clubesPrincipais
        
        let img = UIImage(named: image)
        imagem = img
        
    }
    
}