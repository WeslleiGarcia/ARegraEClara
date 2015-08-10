//
//  Regra.swift
//  ARegraEClara
//
//  Created by Wesllei on 10/08/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import Foundation

class Regra {
    
    
    var numeroRegra : String
    var titulo :  String?
    var descricao :  String?
    var topicos : [String]?
    var descricaoTopico :  [String]?
    
    init(numeroRegra : String, titulo :  String, descricao :  String, topicos : [String], descricaoTopico :  [String]){
        
        self.numeroRegra = numeroRegra
        self.titulo = titulo
        self.descricao = descricao
        self.topicos = topicos
        self.descricaoTopico = descricaoTopico
        
    }
    
}
