
//
//  Campeonato.swift
//  ARegraEClara
//
//  Created by Wesllei on 10/08/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import Foundation

class Campeonato {
    var nomeCampeonato :  String?
    var pais : String?
    var qtdClubesPrincipais : String?
    
    init(nomeCampeonato : String, pais: String, qtdClubesPrincipais: String){
        self.nomeCampeonato = nomeCampeonato
        self.pais = pais
        self.qtdClubesPrincipais = qtdClubesPrincipais
    }
    
}